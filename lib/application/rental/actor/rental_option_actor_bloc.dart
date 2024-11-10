import 'package:bloc/bloc.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product_option.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product_option_item.dart';
import 'package:doortoout/presentation/core/toast/common_toast.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rental_option_actor_event.dart';

part 'rental_option_actor_state.dart';

part 'rental_option_actor_bloc.freezed.dart';

@injectable
class RentalOptionActorBloc
    extends Bloc<RentalOptionActorEvent, RentalOptionActorState> {
  RentalOptionActorBloc() : super(RentalOptionActorState.initial()) {
    on<_Init>((event, emit) async {
      emit(state.copyWith(
          productOptions: event.productOptions,
          isValid: _isValid(event.productOptions)));
    });

    on<_Select>((event, emit) async {
      final currentState = state;

      // 선택된 옵션을 확인할 때 더 이상 selectedOptionsMap을 사용할 필요 없음.
      final productOption = event.rentalShopProductOption;
      final productOptionItems = productOption.optionItems.getOrCrash();

      // 선택된 항목을 찾아 isSelected 상태를 변경하기 전에 현재 선택된 항목 수 확인
      final selectedCount = productOptionItems.where((item) => item.isSelected == true).length;

      // 최대 선택 개수를 초과했는지 먼저 확인 (선택된 항목 수 + 새로 선택할 항목이 초과할 경우 차단)
      final maxSelection = event.rentalShopProductOption.maxSelection.getOrCrash();

      // 선택을 반전하기 전, 최대 개수를 초과하는지 확인
      if (selectedCount >= maxSelection && !(event.rentalShopProductOptionItem.isSelected == true)) {
        // 이미 선택된 항목을 제외하고, 추가로 선택하려는 경우는 최대 선택 개수를 초과함
        emit(currentState.copyWith(
          updatedAt: DateTime.now(),
          status: RentalOptionSelectionStatus.max,
          productOptions: currentState.productOptions,
        ));
        return;
      }

      // 선택된 항목을 찾아 isSelected 상태를 변경
      final updatedItems = productOptionItems.map((item) {
        if (item == event.rentalShopProductOptionItem) {
          // isSelected가 null일 경우, false로 초기화하고 반전 처리
          final isSelected = item.isSelected ?? false;
          return item.copyWith(isSelected: !isSelected); // null 체크 후 선택 상태 반전
        }
        return item;
      }).toList();

      // 선택된 항목 갱신 후, 해당 productOption을 업데이트
      final updatedProductOption =
      productOption.copyWith(optionItems: ListVO(updatedItems));

      // 전체 productOptions 리스트에서 업데이트된 항목을 반영
      final updatedProductOptions = currentState.productOptions.map((option) {
        if (option == productOption) {
          return updatedProductOption;
        }
        return option;
      }).toList();

      // 상태 업데이트
      emit(currentState.copyWith(
        updatedAt: DateTime.now(),
        status: RentalOptionSelectionStatus.none,
        isValid: _isValid(updatedProductOptions),
        productOptions: updatedProductOptions,
      ));
    });

    // on<_Select>((event, emit) async {
    //   final currentState = state;
    //
    //   // 선택된 옵션을 확인할 때 더 이상 selectedOptionsMap을 사용할 필요 없음.
    //   final productOption = event.rentalShopProductOption;
    //   final productOptionItems = productOption.optionItems.getOrCrash();
    //
    //   // 선택된 항목을 찾아 isSelected 상태를 변경
    //   final updatedItems = productOptionItems.map((item) {
    //     if (item == event.rentalShopProductOptionItem) {
    //       // isSelected가 null일 경우, false로 초기화하고 반전 처리
    //       final isSelected = item.isSelected ?? false;
    //       return item.copyWith(isSelected: !isSelected); // null 체크 후 선택 상태 반전
    //     }
    //     return item;
    //   }).toList();
    //
    //   // 선택된 항목 갱신 후, 해당 productOption을 업데이트
    //   final updatedProductOption =
    //       productOption.copyWith(optionItems: ListVO(updatedItems));
    //
    //   // 전체 productOptions 리스트에서 업데이트된 항목을 반영
    //   final updatedProductOptions = currentState.productOptions.map((option) {
    //     if (option == productOption) {
    //       return updatedProductOption;
    //     }
    //     return option;
    //   }).toList();
    //
    //   // 최대 선택 개수를 초과했는지 확인
    //   final selectedCount = updatedItems
    //       .where((item) => item.isSelected == true)
    //       .length; // null 체크 추가
    //   if (selectedCount >
    //       event.rentalShopProductOption.maxSelection.getOrCrash()) {
    //     // 최대 개수 초과 시 상태 업데이트 (실패 상태)
    //     emit(currentState.copyWith(
    //       updatedAt: DateTime.now(),
    //       status: RentalOptionSelectionStatus.max,
    //       productOptions: updatedProductOptions,
    //     ));
    //     return;
    //   }
    //
    //   // 상태 업데이트
    //   emit(currentState.copyWith(
    //     updatedAt: DateTime.now(),
    //     status: RentalOptionSelectionStatus.none,
    //     isValid: _isValid(updatedProductOptions),
    //     productOptions: updatedProductOptions,
    //   ));
    // });
  }

  bool _isValid(List<RentalShopProductOption> productOptions) {
    // 모든 옵션이 최소 및 최대 선택 개수를 만족하는지 확인
    for (var option in productOptions) {
      final selectedCount = option.optionItems.getOrCrash().where((item) => item.isSelected == true).length;
      final minSelection = option.minSelection.getOrCrash();
      final maxSelection = option.maxSelection.getOrCrash();

      // 최소 선택 개수를 만족하지 않거나, 최대 선택 개수를 초과하면 유효하지 않음
      if (selectedCount < minSelection || selectedCount > maxSelection) {
        return false;
      }
    }
    return true;
  }
}

import 'package:bloc/bloc.dart';
import 'package:snowrun_app/application/default_status.dart';
import 'package:snowrun_app/domain/rental_shop/i_rental_shop_repository.dart';
import 'package:snowrun_app/domain/rental_shop/model/rental_shop.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rental_shop_event.dart';

part 'rental_shop_state.dart';

part 'rental_shop_bloc.freezed.dart';

@injectable
class RentalShopBloc extends Bloc<RentalShopEvent, RentalShopState> {
  final IRentalShopRepository repository;

  RentalShopBloc(this.repository) : super(RentalShopState.initial()) {
    on<_GetRentalShop>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse = await repository.getRentalShop(event.rentalShopAccessCode);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: DefaultStatus.failure),
          (rentalShop) {
            return state.copyWith(
              status: DefaultStatus.success,
              rentalShop: rentalShop,
            );
          }
        ),
      );
    });
  }
}

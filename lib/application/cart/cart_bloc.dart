import 'package:bloc/bloc.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:doortoout/domain/activity_center/model/activity_center.dart';
import 'package:doortoout/domain/activity_center/model/date_time_tickets.dart';
import 'package:doortoout/domain/cart/model/cart.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/rental/model/rental.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product.dart';
import 'package:doortoout/domain/rental_shop_product/rental_shop_product_option_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<_SelectActivityCenter>((event, emit) async {
      emit(state.copyWith(
          status: DefaultStatus.success,
          cart: state.cart.copyWith(activityCenter: event.activityCenter)));
    });

    on<_AddRental>((event, emit) async {
      final rental = event.rental;
      final rentals = state.cart.rentals ?? [];
      final newRentals = [...rentals, rental];
      emit(state.copyWith(cart: state.cart.copyWith(rentals: newRentals)));
    });

    on<_EditRental>((event, emit) async {
      final rental = event.rental; // 수정할 rental
      final rentals = state.cart.rentals ?? [];

      // rentals 리스트에서 동일한 ID의 rental을 찾아 수정 (ID를 기준으로 수정한다고 가정)
      final newRentals = rentals.map((existingRental) {
        // 수정할 rental의 ID와 일치하면 새 rental로 대체
        if (existingRental.id == rental.id) {
          return rental; // 수정된 rental을 반환
        } else {
          return existingRental; // 기존 rental 유지
        }
      }).toList();

      // 새로운 rentals 리스트로 상태 업데이트
      emit(state.copyWith(cart: state.cart.copyWith(rentals: newRentals)));
    });

    on<_RemoveRental>((event, emit) async {
      final rental = event.rental;
      final rentals = state.cart.rentals ?? [];
      final newRentals = rentals.where((r) => r.id != rental.id).toList();
      emit(state.copyWith(cart: state.cart.copyWith(rentals: newRentals)));
    });

    on<_RemoveAllRentals>((event, emit) async {
      emit(state.copyWith(cart: state.cart.copyWith(rentals: [])));
    });

    on<_InitRecommendProduct>((event, emit) async {
      emit(state.copyWith(
          refreshedAt: DateTime.now(),
          cart:
              state.cart.copyWith(recommendProduct: event.rentalShopProduct)));
    });

    on<_AddRecommendItemQuantity>((event, emit) async {
      final updatedCart = state.cart.copyWith(
        recommendProduct: state.cart.recommendProduct?.copyWith(
          productOptions: ListVO(state.cart.recommendProduct?.productOptions
                  .getOrCrash()
                  .map((option) {
                return option.copyWith(
                  optionItems:
                      ListVO(option.optionItems.getOrCrash().map((item) {
                    if (item == event.optionItem) {
                      return item.copyWith(
                        quantity: (item.quantity ?? 0) + 1,
                      );
                    }
                    return item;
                  }).toList()),
                );
              }).toList() ??
              []),
        ),
      );

      emit(state.copyWith(refreshedAt: DateTime.now(), cart: updatedCart));
    });

    on<_RemoveRecommendItemQuantity>((event, emit) async {
      final updatedCart = state.cart.copyWith(
        recommendProduct: state.cart.recommendProduct?.copyWith(
          productOptions: ListVO(
            state.cart.recommendProduct?.productOptions
                    .getOrCrash()
                    .map((option) {
                  return option.copyWith(
                    optionItems: ListVO(
                      option.optionItems.getOrCrash().map((item) {
                        if (item == event.optionItem &&
                            (item.quantity ?? 0) > 0) {
                          // 수량 감소
                          return item.copyWith(
                            quantity: (item.quantity ?? 0) - 1,
                          );
                        }
                        return item;
                      }).toList(),
                    ),
                  );
                }).toList() ??
                [],
          ),
        ),
      );

      emit(state.copyWith(refreshedAt: DateTime.now(), cart: updatedCart));
    });

    on<_SetRecommendItemQuantity>((event, emit) async {
      final updatedCart = state.cart.copyWith(
        recommendProduct: state.cart.recommendProduct?.copyWith(
          productOptions: ListVO(
            state.cart.recommendProduct?.productOptions
                    .getOrCrash()
                    .map((option) {
                  return option.copyWith(
                    optionItems: ListVO(
                      option.optionItems.getOrCrash().map((item) {
                        if (item == event.optionItem) {
                          // 수량 설정
                          return item.copyWith(
                            quantity:
                                event.optionItem.quantity, // event에서 받은 수량으로 설정
                          );
                        }
                        return item;
                      }).toList(),
                    ),
                  );
                }).toList() ??
                [],
          ),
        ),
      );

      emit(state.copyWith(refreshedAt: DateTime.now(), cart: updatedCart));
    });

    on<_InitLessonProduct>((event, emit) async {
      emit(state.copyWith(
          refreshedAt: DateTime.now(),
          cart: state.cart.copyWith(lessonProduct: event.rentalShopProduct)));
    });

    on<_AddLessonItemQuantity>((event, emit) async {
      final updatedCart = state.cart.copyWith(
        lessonProduct: state.cart.lessonProduct?.copyWith(
          productOptions: ListVO(state.cart.lessonProduct?.productOptions
                  .getOrCrash()
                  .map((option) {
                return option.copyWith(
                  optionItems:
                      ListVO(option.optionItems.getOrCrash().map((item) {
                    if (item == event.optionItem) {
                      return item.copyWith(
                        quantity: (item.quantity ?? 0) + 1,
                      );
                    }
                    return item;
                  }).toList()),
                );
              }).toList() ??
              []),
        ),
      );

      emit(state.copyWith(refreshedAt: DateTime.now(), cart: updatedCart));
    });

    on<_RemoveLessonItemQuantity>((event, emit) async {
      final updatedCart = state.cart.copyWith(
        lessonProduct: state.cart.lessonProduct?.copyWith(
          productOptions: ListVO(
            state.cart.lessonProduct?.productOptions.getOrCrash().map((option) {
                  return option.copyWith(
                    optionItems: ListVO(
                      option.optionItems.getOrCrash().map((item) {
                        if (item == event.optionItem &&
                            (item.quantity ?? 0) > 0) {
                          // 수량 감소
                          return item.copyWith(
                            quantity: (item.quantity ?? 0) - 1,
                          );
                        }
                        return item;
                      }).toList(),
                    ),
                  );
                }).toList() ??
                [],
          ),
        ),
      );

      emit(state.copyWith(refreshedAt: DateTime.now(), cart: updatedCart));
    });

    on<_SetLessonItemQuantity>((event, emit) async {
      final updatedCart = state.cart.copyWith(
        lessonProduct: state.cart.lessonProduct?.copyWith(
          productOptions: ListVO(
            state.cart.lessonProduct?.productOptions.getOrCrash().map((option) {
                  return option.copyWith(
                    optionItems: ListVO(
                      option.optionItems.getOrCrash().map((item) {
                        if (item == event.optionItem) {
                          // 수량 설정
                          return item.copyWith(
                            quantity:
                                event.optionItem.quantity, // event에서 받은 수량으로 설정
                          );
                        }
                        return item;
                      }).toList(),
                    ),
                  );
                }).toList() ??
                [],
          ),
        ),
      );

      emit(state.copyWith(refreshedAt: DateTime.now(), cart: updatedCart));
    });

    on<_SetDateTimeTickets>((event, emit) async {
      final updatedRentals = state.cart.rentals?.map((rental) {
        // Check if this is the rental to update
        if (rental.id == event.rental.id) {
          // Replace the dateTimeTickets with the new list passed in the event
          return rental.copyWith(dateTimeTickets: event.dateTimeTickets);
        }
        return rental;
      }).toList();

      // Emit the updated state with modified rentals
      emit(state.copyWith(
          refreshedAt: DateTime.now(),
          cart: state.cart.copyWith(rentals: updatedRentals)));
    });

    on<_SetMemo>((event, emit) async {
      emit(state.copyWith(cart: state.cart.copyWith(memo: event.memo)));
    });

    on<_Clear>((event, emit) async {
      //TODO : 앞으로 추가되는 모든 값들 다 null로 초기화 해주기
      emit(state.copyWith(
        refreshedAt: DateTime.now(),
        status: DefaultStatus.initial,
        cart: Cart.empty(),
      ));
    });
  }
}

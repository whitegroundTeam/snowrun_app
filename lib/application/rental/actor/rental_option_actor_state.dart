part of 'rental_option_actor_bloc.dart';

enum RentalOptionSelectionStatus {
  none,
  max,
  min,
}

@freezed
class RentalOptionActorState with _$RentalOptionActorState {
  const factory RentalOptionActorState({
    required DateTime updatedAt,
    required RentalOptionSelectionStatus status,
    required List<RentalShopProductOption> productOptions,
    // required Map<RentalShopProductOption, List<RentalShopProductOptionItem>>
    //     selectedOptionsMap,
    required bool isValid,
  }) = _RentalOptionActorState;

  factory RentalOptionActorState.initial() => RentalOptionActorState(
        updatedAt: DateTime.now(),
        status: RentalOptionSelectionStatus.none,
        productOptions: [],
        // selectedOptionsMap: {},
        isValid: false,
      );
}

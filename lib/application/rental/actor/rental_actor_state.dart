part of 'rental_actor_bloc.dart';

enum RentalActorStatus {
  initial,
  edit,
  create,
  progress,
  completedMainEquipment,
  completedApparelEquipment,
  completedAccessoryEquipment,
}

@freezed
class RentalActorState with _$RentalActorState {
  const factory RentalActorState({
    required RentalActorStatus status,
    required DateTime updatedAt,
    required Rental rental,
    required bool isValidRentalInfo,
    required bool isValidContact,
    required bool isValidName,
    required bool isValidPeriod,
    required bool isValidAge,
    required bool isValidGender,
    required bool isValidBodySpec,
  }) = _RentalActorState;

  factory RentalActorState.initial() => RentalActorState(
        updatedAt: DateTime.now(),
        status: RentalActorStatus.initial,
        rental: Rental.empty(),
        isValidRentalInfo: false,
        isValidContact: false,
        isValidName: false,
        isValidPeriod: false,
        isValidAge: false,
        isValidGender: false,
        isValidBodySpec: false,
      );
}

part of 'riding_controller_bloc.dart';

@freezed
class RidingControllerEvent with _$RidingControllerEvent {
  const factory RidingControllerEvent.updateScrollExtent(double currentExtent, double maxExtent, AxisDirection scrollDirection) = _UpdateScrollExtent;
  const factory RidingControllerEvent.selectRidingPlayer(RidingPlayer ridingPlayer) = _SelectRidingPlayer;
}

part of 'select_button_bloc.dart';

@freezed
class SelectButtonState with _$SelectButtonState {
  const factory SelectButtonState(
      {required DefaultStatus status,
      required bool isActive}) = _SelectButtonState;

  factory SelectButtonState.initial() => const SelectButtonState(
        status: DefaultStatus.initial,
        isActive: true,
      );
}

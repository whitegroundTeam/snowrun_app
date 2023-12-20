part of 'select_button_bloc.dart';

@freezed
class SelectButtonEvent with _$SelectButtonEvent {
  const factory SelectButtonEvent.setActive({required bool isActive}) = _SetActive;
}

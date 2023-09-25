part of 'toast_bloc.dart';

@freezed
class ToastEvent with _$ToastEvent {
  const factory ToastEvent.show(String message) = _Show;
  const factory ToastEvent.reset() = _Reset;
}

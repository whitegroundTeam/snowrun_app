part of 'toast_bloc.dart';

@freezed
class ToastState with _$ToastState {
  const factory ToastState({
    required DefaultStatus status,
    required String? message,
    required DateTime updatedAt,
  }) = _ToastState;

  factory ToastState.initial() => ToastState(
        status: DefaultStatus.initial,
        message: null,
        updatedAt: DateTime.now(),
      );
}

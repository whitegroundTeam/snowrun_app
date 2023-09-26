part of 'user_bloc.dart';

enum UserStatus {
  initial,
  progressGetUsers,
  successGetUsers,
  failureGetUsers,
  progressUpdateCurrentLocation,
  successUpdateCurrentLocation,
  failureUpdateCurrentLocation,
}

@freezed
class UserState with _$UserState {
  const factory UserState({
    required UserStatus status,
    required List<User> users,
    required User? user,
  }) = _UserState;

  factory UserState.initial() => const UserState(
        status: UserStatus.initial,
        users: [],
        user: null,
      );
}

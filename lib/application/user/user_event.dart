part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.getUsers() = _GetUsers;
  const factory UserEvent.updateCurrentLocation(double lat, double lng) = _UpdateCurrentLocation;
  const factory UserEvent.savePushToken(String token) = _SavePushToken;
  const factory UserEvent.saveUser(User user) = _SaveUser;
}
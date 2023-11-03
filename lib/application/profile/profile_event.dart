part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.updateProfileImage(String profileImageType) = _UpdateProfileImage;
  const factory ProfileEvent.getSnowBallProfileImages() = _GetSnowBallProfileImages;
}

part of 'profile_bloc.dart';


@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required UserStatus status,
    required List<SnowBallProfileImage>? snowBallProfileImages,
  }) = _ProfileState;

  factory ProfileState.initial() => const ProfileState(
        status: UserStatus.initial,
        snowBallProfileImages: null,
      );
}

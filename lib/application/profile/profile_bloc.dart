import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/application/user/user_bloc.dart';
import 'package:snowrun_app/domain/user/i_user_repository.dart';
import 'package:snowrun_app/domain/user/model/snow_ball_profile_image.dart';

part 'profile_event.dart';

part 'profile_state.dart';

part 'profile_bloc.freezed.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final IUserRepository _repository;

  ProfileBloc(this._repository) : super(ProfileState.initial()) {
    on<_UpdateProfileImage>((event, emit) async {
      emit(state.copyWith(status: UserStatus.progressUpdateProfileImage));
      final failureOrResponse =
          await _repository.updateProfileImage(event.profileImageType);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: UserStatus.failureUpdateProfileImage),
          (response) => state.copyWith(
            status: UserStatus.successUpdateProfileImage,
          ),
        ),
      );
    });

    on<_GetSnowBallProfileImages>((event, emit) async {
      emit(state.copyWith(status: UserStatus.progressGetSnowBallProfileImages));
      final failureOrResponse = await _repository.getSnowBallProfileImages();
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(
              status: UserStatus.failureGetSnowBallProfileImages),
          (response) => state.copyWith(
            status: UserStatus.successGetSnowBallProfileImages,
            snowBallProfileImages: response,
          ),
        ),
      );
    });
  }
}

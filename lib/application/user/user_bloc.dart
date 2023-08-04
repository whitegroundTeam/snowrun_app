import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:snowrun_app/domain/user/i_user_repository.dart';
import 'package:snowrun_app/domain/user/model/user.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

@injectable
class UserBloc extends Bloc<UserEvent, UserState> {
  final IUserRepository _repository;

  UserBloc(this._repository) : super(UserState.initial()) {
    on<UserEvent>((event, emit) async {
      emit(state.copyWith(status: UserStatus.progressGetUsers));
      final failureOrResponse = await _repository.getUsers();
      emit(
        failureOrResponse.fold(
              (f) => state.copyWith(status: UserStatus.failureGetUsers),
              (users) => state.copyWith(
            status: UserStatus.successGetUsers,
            users: users,
          ),
        ),
      );
    });
  }
}

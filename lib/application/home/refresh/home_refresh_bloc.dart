import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_refresh_event.dart';

part 'home_refresh_state.dart';

part 'home_refresh_bloc.freezed.dart';

@injectable
class HomeRefreshBloc extends Bloc<HomeRefreshEvent, HomeRefreshState> {
  HomeRefreshBloc() : super(HomeRefreshState.initial()) {
    on<_Refresh>((event, emit) async {
      emit(state.copyWith(refreshedAt: DateTime.now()));
    });
  }
}

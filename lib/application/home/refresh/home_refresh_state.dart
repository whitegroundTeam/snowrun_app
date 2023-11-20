part of 'home_refresh_bloc.dart';

@freezed
class HomeRefreshState with _$HomeRefreshState {
  const factory HomeRefreshState({
    required DateTime refreshedAt,
  }) = _HomeRefreshState;

  factory HomeRefreshState.initial() => HomeRefreshState(
        refreshedAt: DateTime.now(),
      );
}

part of 'home_refresh_bloc.dart';

@freezed
class HomeRefreshEvent with _$HomeRefreshEvent {
  const factory HomeRefreshEvent.refresh() = _Refresh;
}

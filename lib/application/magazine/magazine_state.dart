part of 'magazine_bloc.dart';

@freezed
class MagazineState with _$MagazineState {
  const factory MagazineState({
    required DefaultStatus status,
    required List<Magazine> magazines,
    required Magazine magazine,
  }) = _MagazineState;

  factory MagazineState.initial() => MagazineState(
        status: DefaultStatus.initial,
        magazines: [],
        magazine: Magazine.empty(),
      );
}

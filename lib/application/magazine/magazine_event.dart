part of 'magazine_bloc.dart';

@freezed
class MagazineEvent with _$MagazineEvent {
  const factory MagazineEvent.getMagazines(
      {required int start, int? size}) = _GetMagazines;

  const factory MagazineEvent.getMagazine({required int id}) = _GetMagazine;
}

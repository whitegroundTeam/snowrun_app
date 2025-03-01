import 'package:bloc/bloc.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:doortoout/domain/magazine/i_magazine_repository.dart';
import 'package:doortoout/domain/magazine/magazine.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'magazine_event.dart';

part 'magazine_state.dart';

part 'magazine_bloc.freezed.dart';

@injectable
class MagazineBloc extends Bloc<MagazineEvent, MagazineState> {
  final IMagazineRepository _magazineRepository;

  MagazineBloc(this._magazineRepository) : super(MagazineState.initial()) {
    on<_GetMagazines>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse =
          await _magazineRepository.getMagazines(start: event.start);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: DefaultStatus.failure),
          (magazines) => state.copyWith(
              status: DefaultStatus.success,
              magazines: magazines.items.getOrCrash()),
        ),
      );
    });

    on<_GetMagazine>((event, emit) async {
      emit(state.copyWith(status: DefaultStatus.progress));
      final failureOrResponse =
          await _magazineRepository.getMagazine(id: event.id);
      emit(
        failureOrResponse.fold(
          (f) => state.copyWith(status: DefaultStatus.failure),
          (magazine) =>
              state.copyWith(status: DefaultStatus.success, magazine: magazine),
        ),
      );
    });
  }
}

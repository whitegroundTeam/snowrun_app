import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doortoout/application/default_status.dart';
import 'package:doortoout/domain/body_spec/model/body_spec.dart';
import 'package:doortoout/domain/body_spec/model/body_spec_value.dart';
import 'package:doortoout/domain/body_spec/model/foot_size.dart';
import 'package:doortoout/domain/body_spec/model/height.dart';
import 'package:doortoout/domain/body_spec/model/range.dart';
import 'package:doortoout/domain/body_spec/model/weight.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:doortoout/domain/rental_shop/model/rental_shop.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'body_spec_event.dart';

part 'body_spec_state.dart';

part 'body_spec_bloc.freezed.dart';

@injectable
class BodySpecBloc extends Bloc<BodySpecEvent, BodySpecState> {
  BodySpecBloc() : super(BodySpecState.initial()) {
    on<_Init>((event, emit) async {
      emit(state.copyWith(
        status: DefaultStatus.success,
        updatedAt: DateTime.now(),
        bodySpec: event.bodySpec,
        rentalShop: event.rentalShop,
        heights: getCurrentHeight(
            event.rentalShop,
            event.bodySpec.height?.unit ??
                event.rentalShop.supplyBodySpec.supplyHeight.defaultHeightUnit),
        heightUnits: getCurrentHeightUnits(event.rentalShop),
        weights: getCurrentWeight(
            event.rentalShop,
            event.bodySpec.weight?.unit ??
                event.rentalShop.supplyBodySpec.supplyWeight.defaultWeightUnit),
        weightUnits: getCurrentWeightUnits(event.rentalShop),
        footSizes: getCurrentFootSize(
            event.rentalShop,
            event.bodySpec.footSize?.unit ??
                event.rentalShop.supplyBodySpec.supplyFootSize
                    .defaultFootSizeUnit),
        footSizeUnits: getCurrentFootSizeUnits(
          event.rentalShop,
          event.isChild,
          event.isMale,
        ),
        footShapes: getCurrentFootShapes(event.rentalShop),
      ));
    });

    on<_SetHeight>((event, emit) async {
      final height = state.bodySpec.height ?? Height.empty();

      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: DefaultStatus.success,
        bodySpec: state.bodySpec.copyWith(
          height:
              height.copyWith(range: event.selectedRange, unit: height.unit),
        ),
      ));
    });

    on<_SetHeightUnit>((event, emit) async {
      final height = state.bodySpec.height ?? Height.empty();

      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: DefaultStatus.success,
        bodySpec: state.bodySpec.copyWith(
          height: height.copyWith(range: null, unit: event.selectedUnit),
        ),
        heights: getCurrentHeight(state.rentalShop, event.selectedUnit),
      ));
    });

    on<_SetWeight>((event, emit) async {
      final weight = state.bodySpec.weight ?? Weight.empty();

      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: DefaultStatus.success,
        bodySpec: state.bodySpec.copyWith(
          weight: weight.copyWith(range: event.selectedRange),
        ),
        weights: getCurrentWeight(state.rentalShop, weight.unit),
      ));
    });

    on<_SetWeightUnit>((event, emit) async {
      final weight = state.bodySpec.weight ?? Weight.empty();

      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: DefaultStatus.success,
        bodySpec: state.bodySpec.copyWith(
          weight: weight.copyWith(range: null, unit: event.selectedUnit),
        ),
        weights: getCurrentWeight(state.rentalShop, event.selectedUnit),
      ));
    });

    on<_SetFootSize>((event, emit) async {
      final footSize = state.bodySpec.footSize ?? FootSize.empty();
      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: DefaultStatus.success,
        bodySpec: state.bodySpec.copyWith(
          footSize: footSize.copyWith(
            value: event.value,
          ),
        ),
      ));
    });

    on<_SetFootSizeUnit>((event, emit) async {
      final footSize = state.bodySpec.footSize ?? FootSize.empty();

      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: DefaultStatus.success,
        bodySpec: state.bodySpec.copyWith(
          footSize: footSize.copyWith(
            value: null,
            unit: event.selectedUnit,
          ),
        ),
        footSizes: getCurrentFootSize(state.rentalShop, event.selectedUnit),
      ));
    });

    on<_SelectFootShape>((event, emit) async {
      final selectedFootShapes =
          state.bodySpec.footSize?.footShapes.getOrCrash() ??
              [FootShape.normal];
      if (event.selectedFootShape == FootShape.normal) {
        selectedFootShapes.clear();
      } else {
        selectedFootShapes.remove(FootShape.normal);
      }

      if (selectedFootShapes.contains(event.selectedFootShape)) {
        selectedFootShapes.remove(event.selectedFootShape);
      } else {
        selectedFootShapes.add(event.selectedFootShape);
      }

      emit(state.copyWith(
        updatedAt: DateTime.now(),
        status: DefaultStatus.success,
        bodySpec: state.bodySpec.copyWith(
          footSize: state.bodySpec.footSize ??
              FootSize.empty().copyWith(
                footShapes: ListVO(selectedFootShapes),
              ),
        ),
      ));
    });
  }

  getCurrentHeight(RentalShop rentalShop, HeightUnit selectedUnit) {
    final supplyHeight = rentalShop.supplyBodySpec.supplyHeight;
    return supplyHeight.rangesMap.getOrCrash()[selectedUnit] ?? [];
  }

  getCurrentHeightUnits(RentalShop rentalShop) {
    final supplyHeight = rentalShop.supplyBodySpec.supplyHeight;
    return supplyHeight.rangesMap.getOrCrash().keys.toList();
  }

  getCurrentWeight(RentalShop rentalShop, WeightUnit selectedUnit) {
    final supplyWeight = rentalShop.supplyBodySpec.supplyWeight;
    return supplyWeight.rangesMap.getOrCrash()[selectedUnit] ?? [];
  }

  getCurrentWeightUnits(RentalShop rentalShop) {
    final supplyWeight = rentalShop.supplyBodySpec.supplyWeight;
    return supplyWeight.rangesMap.getOrCrash().keys.toList();
  }

  getCurrentFootSize(RentalShop rentalShop, FootSizeUnit selectedUnit) {
    final supplyFootSize = rentalShop.supplyBodySpec.supplyFootSize;
    return supplyFootSize.supplyFootSizeMap.getOrCrash()[selectedUnit] ?? [];
  }

  getCurrentFootSizeUnits(RentalShop rentalShop, bool isChild, bool isMale) {
    final supplyFootSize = rentalShop.supplyBodySpec.supplyFootSize;
    return supplyFootSize.getFootSizeUnits(isChild, isMale);
  }

  getCurrentFootShapes(RentalShop rentalShop) {
    final supplyFootSize = rentalShop.supplyBodySpec.supplyFootSize;
    return supplyFootSize.supplyFootShapes.getOrCrash();
  }
}

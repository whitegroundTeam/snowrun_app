part of 'body_spec_bloc.dart';

@freezed
class BodySpecState with _$BodySpecState {
  const factory BodySpecState({
    required DateTime updatedAt,
    required DefaultStatus status,
    required BodySpec bodySpec,
    required RentalShop rentalShop,
    required List<Range> heights,
    required List<HeightUnit> heightUnits,
    required List<Range> weights,
    required List<WeightUnit> weightUnits,
    required List<BodySpecValue> footSizes,
    required List<FootSizeUnit> footSizeUnits,
    required List<FootShape> footShapes,
  }) = _BodySpecState;

  factory BodySpecState.initial() => BodySpecState(
        updatedAt: DateTime.now(),
        status: DefaultStatus.initial,
        bodySpec: BodySpec.empty(),
        rentalShop: RentalShop.empty(),
        heights: [],
        heightUnits: [],
        weights: [],
        weightUnits: [],
        footSizes: [],
        footSizeUnits: [],
        footShapes: [],
      );
}

part of 'body_spec_bloc.dart';

@freezed
class BodySpecEvent with _$BodySpecEvent {
  const factory BodySpecEvent.init({
    required BodySpec bodySpec,
    required RentalShop rentalShop,
    required bool isChild,
    required bool isMale,
  }) = _Init;

  const factory BodySpecEvent.setHeight({required Range selectedRange}) =
      _SetHeight;

  const factory BodySpecEvent.setHeightUnit(
      {required HeightUnit selectedUnit}) = _SetHeightUnit;

  const factory BodySpecEvent.setWeight({required Range selectedRange}) =
      _SetWeight;

  const factory BodySpecEvent.setWeightUnit(
      {required WeightUnit selectedUnit}) = _SetWeightUnit;

  const factory BodySpecEvent.setFootSize({
    required BodySpecValue value,
  }) = _SetFootSize;

  const factory BodySpecEvent.setFootSizeUnit(
      {required FootSizeUnit selectedUnit}) = _SetFootSizeUnit;

  const factory BodySpecEvent.selectFootShape(
      {required FootShape selectedFootShape}) = _SelectFootShape;
}

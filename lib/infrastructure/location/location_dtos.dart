import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';
import 'package:snowrun_app/domain/location/model/location.dart';
import 'package:snowrun_app/domain/place/types.dart';


part 'location_dtos.freezed.dart';

part 'location_dtos.g.dart';

@freezed
class LocationDto with _$LocationDto {
  const LocationDto._();

  const factory LocationDto({
    @JsonKey(name: 'coordinates') required List<Polygon> coordinates,
  }) = _LocationDto;

  factory LocationDto.fromDomain(Location location) {
    return LocationDto(
      coordinates: location.coordinates.getOrCrash(),
    );
  }

  Location toDomain() {
    return Location(
      coordinates: ListVO(coordinates),
    );
  }

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}
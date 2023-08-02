// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlaceDto _$PlaceDtoFromJson(Map<String, dynamic> json) {
  return _PlaceDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceDtoCopyWith<PlaceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDtoCopyWith<$Res> {
  factory $PlaceDtoCopyWith(PlaceDto value, $Res Function(PlaceDto) then) =
      _$PlaceDtoCopyWithImpl<$Res, PlaceDto>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$PlaceDtoCopyWithImpl<$Res, $Val extends PlaceDto>
    implements $PlaceDtoCopyWith<$Res> {
  _$PlaceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlaceDtoCopyWith<$Res> implements $PlaceDtoCopyWith<$Res> {
  factory _$$_PlaceDtoCopyWith(
          _$_PlaceDto value, $Res Function(_$_PlaceDto) then) =
      __$$_PlaceDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_PlaceDtoCopyWithImpl<$Res>
    extends _$PlaceDtoCopyWithImpl<$Res, _$_PlaceDto>
    implements _$$_PlaceDtoCopyWith<$Res> {
  __$$_PlaceDtoCopyWithImpl(
      _$_PlaceDto _value, $Res Function(_$_PlaceDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_PlaceDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlaceDto extends _PlaceDto {
  const _$_PlaceDto({@JsonKey(name: 'name') required this.name}) : super._();

  factory _$_PlaceDto.fromJson(Map<String, dynamic> json) =>
      _$$_PlaceDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'PlaceDto(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlaceDto &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlaceDtoCopyWith<_$_PlaceDto> get copyWith =>
      __$$_PlaceDtoCopyWithImpl<_$_PlaceDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlaceDtoToJson(
      this,
    );
  }
}

abstract class _PlaceDto extends PlaceDto {
  const factory _PlaceDto({@JsonKey(name: 'name') required final String name}) =
      _$_PlaceDto;
  const _PlaceDto._() : super._();

  factory _PlaceDto.fromJson(Map<String, dynamic> json) = _$_PlaceDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PlaceDtoCopyWith<_$_PlaceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

BoundaryDto _$BoundaryDtoFromJson(Map<String, dynamic> json) {
  return _BoundaryDto.fromJson(json);
}

/// @nodoc
mixin _$BoundaryDto {
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoundaryDtoCopyWith<BoundaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundaryDtoCopyWith<$Res> {
  factory $BoundaryDtoCopyWith(
          BoundaryDto value, $Res Function(BoundaryDto) then) =
      _$BoundaryDtoCopyWithImpl<$Res, BoundaryDto>;
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class _$BoundaryDtoCopyWithImpl<$Res, $Val extends BoundaryDto>
    implements $BoundaryDtoCopyWith<$Res> {
  _$BoundaryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoundaryDtoCopyWith<$Res>
    implements $BoundaryDtoCopyWith<$Res> {
  factory _$$_BoundaryDtoCopyWith(
          _$_BoundaryDto value, $Res Function(_$_BoundaryDto) then) =
      __$$_BoundaryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$_BoundaryDtoCopyWithImpl<$Res>
    extends _$BoundaryDtoCopyWithImpl<$Res, _$_BoundaryDto>
    implements _$$_BoundaryDtoCopyWith<$Res> {
  __$$_BoundaryDtoCopyWithImpl(
      _$_BoundaryDto _value, $Res Function(_$_BoundaryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_BoundaryDto(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoundaryDto extends _BoundaryDto {
  const _$_BoundaryDto({@JsonKey(name: 'name') required this.name}) : super._();

  factory _$_BoundaryDto.fromJson(Map<String, dynamic> json) =>
      _$$_BoundaryDtoFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String name;

  @override
  String toString() {
    return 'BoundaryDto(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoundaryDto &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoundaryDtoCopyWith<_$_BoundaryDto> get copyWith =>
      __$$_BoundaryDtoCopyWithImpl<_$_BoundaryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoundaryDtoToJson(
      this,
    );
  }
}

abstract class _BoundaryDto extends BoundaryDto {
  const factory _BoundaryDto(
      {@JsonKey(name: 'name') required final String name}) = _$_BoundaryDto;
  const _BoundaryDto._() : super._();

  factory _BoundaryDto.fromJson(Map<String, dynamic> json) =
      _$_BoundaryDto.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_BoundaryDtoCopyWith<_$_BoundaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

VerticesDto _$VerticesDtoFromJson(Map<String, dynamic> json) {
  return _VerticesDto.fromJson(json);
}

/// @nodoc
mixin _$VerticesDto {
  @JsonKey(name: 'type')
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'coordinates')
  List<List<List<double>>> get coordinates =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerticesDtoCopyWith<VerticesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerticesDtoCopyWith<$Res> {
  factory $VerticesDtoCopyWith(
          VerticesDto value, $Res Function(VerticesDto) then) =
      _$VerticesDtoCopyWithImpl<$Res, VerticesDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'coordinates') List<List<List<double>>> coordinates});
}

/// @nodoc
class _$VerticesDtoCopyWithImpl<$Res, $Val extends VerticesDto>
    implements $VerticesDtoCopyWith<$Res> {
  _$VerticesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerticesDtoCopyWith<$Res>
    implements $VerticesDtoCopyWith<$Res> {
  factory _$$_VerticesDtoCopyWith(
          _$_VerticesDto value, $Res Function(_$_VerticesDto) then) =
      __$$_VerticesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'coordinates') List<List<List<double>>> coordinates});
}

/// @nodoc
class __$$_VerticesDtoCopyWithImpl<$Res>
    extends _$VerticesDtoCopyWithImpl<$Res, _$_VerticesDto>
    implements _$$_VerticesDtoCopyWith<$Res> {
  __$$_VerticesDtoCopyWithImpl(
      _$_VerticesDto _value, $Res Function(_$_VerticesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$_VerticesDto(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<List<double>>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerticesDto extends _VerticesDto {
  const _$_VerticesDto(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'coordinates')
      required final List<List<List<double>>> coordinates})
      : _coordinates = coordinates,
        super._();

  factory _$_VerticesDto.fromJson(Map<String, dynamic> json) =>
      _$$_VerticesDtoFromJson(json);

  @override
  @JsonKey(name: 'type')
  final String type;
  final List<List<List<double>>> _coordinates;
  @override
  @JsonKey(name: 'coordinates')
  List<List<List<double>>> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  @override
  String toString() {
    return 'VerticesDto(type: $type, coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerticesDto &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, type, const DeepCollectionEquality().hash(_coordinates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerticesDtoCopyWith<_$_VerticesDto> get copyWith =>
      __$$_VerticesDtoCopyWithImpl<_$_VerticesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerticesDtoToJson(
      this,
    );
  }
}

abstract class _VerticesDto extends VerticesDto {
  const factory _VerticesDto(
      {@JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'coordinates')
      required final List<List<List<double>>> coordinates}) = _$_VerticesDto;
  const _VerticesDto._() : super._();

  factory _VerticesDto.fromJson(Map<String, dynamic> json) =
      _$_VerticesDto.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'coordinates')
  List<List<List<double>>> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_VerticesDtoCopyWith<_$_VerticesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateBoundaryDto _$CreateBoundaryDtoFromJson(Map<String, dynamic> json) {
  return _CreateBoundaryDto.fromJson(json);
}

/// @nodoc
mixin _$CreateBoundaryDto {
  @JsonKey(name: 'place')
  int get placeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'vertices')
  VerticesDto get vertices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateBoundaryDtoCopyWith<CreateBoundaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateBoundaryDtoCopyWith<$Res> {
  factory $CreateBoundaryDtoCopyWith(
          CreateBoundaryDto value, $Res Function(CreateBoundaryDto) then) =
      _$CreateBoundaryDtoCopyWithImpl<$Res, CreateBoundaryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'place') int placeId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'vertices') VerticesDto vertices});

  $VerticesDtoCopyWith<$Res> get vertices;
}

/// @nodoc
class _$CreateBoundaryDtoCopyWithImpl<$Res, $Val extends CreateBoundaryDto>
    implements $CreateBoundaryDtoCopyWith<$Res> {
  _$CreateBoundaryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? type = null,
    Object? status = null,
    Object? vertices = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      vertices: null == vertices
          ? _value.vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as VerticesDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerticesDtoCopyWith<$Res> get vertices {
    return $VerticesDtoCopyWith<$Res>(_value.vertices, (value) {
      return _then(_value.copyWith(vertices: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateBoundaryDtoCopyWith<$Res>
    implements $CreateBoundaryDtoCopyWith<$Res> {
  factory _$$_CreateBoundaryDtoCopyWith(_$_CreateBoundaryDto value,
          $Res Function(_$_CreateBoundaryDto) then) =
      __$$_CreateBoundaryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'place') int placeId,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'type') int type,
      @JsonKey(name: 'status') int status,
      @JsonKey(name: 'vertices') VerticesDto vertices});

  @override
  $VerticesDtoCopyWith<$Res> get vertices;
}

/// @nodoc
class __$$_CreateBoundaryDtoCopyWithImpl<$Res>
    extends _$CreateBoundaryDtoCopyWithImpl<$Res, _$_CreateBoundaryDto>
    implements _$$_CreateBoundaryDtoCopyWith<$Res> {
  __$$_CreateBoundaryDtoCopyWithImpl(
      _$_CreateBoundaryDto _value, $Res Function(_$_CreateBoundaryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? type = null,
    Object? status = null,
    Object? vertices = null,
  }) {
    return _then(_$_CreateBoundaryDto(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      vertices: null == vertices
          ? _value.vertices
          : vertices // ignore: cast_nullable_to_non_nullable
              as VerticesDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateBoundaryDto extends _CreateBoundaryDto {
  const _$_CreateBoundaryDto(
      {@JsonKey(name: 'place') required this.placeId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'vertices') required this.vertices})
      : super._();

  factory _$_CreateBoundaryDto.fromJson(Map<String, dynamic> json) =>
      _$$_CreateBoundaryDtoFromJson(json);

  @override
  @JsonKey(name: 'place')
  final int placeId;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'type')
  final int type;
  @override
  @JsonKey(name: 'status')
  final int status;
  @override
  @JsonKey(name: 'vertices')
  final VerticesDto vertices;

  @override
  String toString() {
    return 'CreateBoundaryDto(placeId: $placeId, name: $name, type: $type, status: $status, vertices: $vertices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateBoundaryDto &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.vertices, vertices) ||
                other.vertices == vertices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, placeId, name, type, status, vertices);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateBoundaryDtoCopyWith<_$_CreateBoundaryDto> get copyWith =>
      __$$_CreateBoundaryDtoCopyWithImpl<_$_CreateBoundaryDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateBoundaryDtoToJson(
      this,
    );
  }
}

abstract class _CreateBoundaryDto extends CreateBoundaryDto {
  const factory _CreateBoundaryDto(
          {@JsonKey(name: 'place') required final int placeId,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'type') required final int type,
          @JsonKey(name: 'status') required final int status,
          @JsonKey(name: 'vertices') required final VerticesDto vertices}) =
      _$_CreateBoundaryDto;
  const _CreateBoundaryDto._() : super._();

  factory _CreateBoundaryDto.fromJson(Map<String, dynamic> json) =
      _$_CreateBoundaryDto.fromJson;

  @override
  @JsonKey(name: 'place')
  int get placeId;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'type')
  int get type;
  @override
  @JsonKey(name: 'status')
  int get status;
  @override
  @JsonKey(name: 'vertices')
  VerticesDto get vertices;
  @override
  @JsonKey(ignore: true)
  _$$_CreateBoundaryDtoCopyWith<_$_CreateBoundaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

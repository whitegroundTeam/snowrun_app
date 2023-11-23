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
abstract class _$$PlaceDtoImplCopyWith<$Res>
    implements $PlaceDtoCopyWith<$Res> {
  factory _$$PlaceDtoImplCopyWith(
          _$PlaceDtoImpl value, $Res Function(_$PlaceDtoImpl) then) =
      __$$PlaceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$PlaceDtoImplCopyWithImpl<$Res>
    extends _$PlaceDtoCopyWithImpl<$Res, _$PlaceDtoImpl>
    implements _$$PlaceDtoImplCopyWith<$Res> {
  __$$PlaceDtoImplCopyWithImpl(
      _$PlaceDtoImpl _value, $Res Function(_$PlaceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PlaceDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceDtoImpl extends _PlaceDto {
  const _$PlaceDtoImpl({@JsonKey(name: 'name') required this.name}) : super._();

  factory _$PlaceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceDtoImplFromJson(json);

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
            other is _$PlaceDtoImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDtoImplCopyWith<_$PlaceDtoImpl> get copyWith =>
      __$$PlaceDtoImplCopyWithImpl<_$PlaceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaceDto extends PlaceDto {
  const factory _PlaceDto({@JsonKey(name: 'name') required final String name}) =
      _$PlaceDtoImpl;
  const _PlaceDto._() : super._();

  factory _PlaceDto.fromJson(Map<String, dynamic> json) =
      _$PlaceDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$PlaceDtoImplCopyWith<_$PlaceDtoImpl> get copyWith =>
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
abstract class _$$BoundaryDtoImplCopyWith<$Res>
    implements $BoundaryDtoCopyWith<$Res> {
  factory _$$BoundaryDtoImplCopyWith(
          _$BoundaryDtoImpl value, $Res Function(_$BoundaryDtoImpl) then) =
      __$$BoundaryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'name') String name});
}

/// @nodoc
class __$$BoundaryDtoImplCopyWithImpl<$Res>
    extends _$BoundaryDtoCopyWithImpl<$Res, _$BoundaryDtoImpl>
    implements _$$BoundaryDtoImplCopyWith<$Res> {
  __$$BoundaryDtoImplCopyWithImpl(
      _$BoundaryDtoImpl _value, $Res Function(_$BoundaryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$BoundaryDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BoundaryDtoImpl extends _BoundaryDto {
  const _$BoundaryDtoImpl({@JsonKey(name: 'name') required this.name})
      : super._();

  factory _$BoundaryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BoundaryDtoImplFromJson(json);

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
            other is _$BoundaryDtoImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BoundaryDtoImplCopyWith<_$BoundaryDtoImpl> get copyWith =>
      __$$BoundaryDtoImplCopyWithImpl<_$BoundaryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BoundaryDtoImplToJson(
      this,
    );
  }
}

abstract class _BoundaryDto extends BoundaryDto {
  const factory _BoundaryDto(
      {@JsonKey(name: 'name') required final String name}) = _$BoundaryDtoImpl;
  const _BoundaryDto._() : super._();

  factory _BoundaryDto.fromJson(Map<String, dynamic> json) =
      _$BoundaryDtoImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$BoundaryDtoImplCopyWith<_$BoundaryDtoImpl> get copyWith =>
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
abstract class _$$VerticesDtoImplCopyWith<$Res>
    implements $VerticesDtoCopyWith<$Res> {
  factory _$$VerticesDtoImplCopyWith(
          _$VerticesDtoImpl value, $Res Function(_$VerticesDtoImpl) then) =
      __$$VerticesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'type') String type,
      @JsonKey(name: 'coordinates') List<List<List<double>>> coordinates});
}

/// @nodoc
class __$$VerticesDtoImplCopyWithImpl<$Res>
    extends _$VerticesDtoCopyWithImpl<$Res, _$VerticesDtoImpl>
    implements _$$VerticesDtoImplCopyWith<$Res> {
  __$$VerticesDtoImplCopyWithImpl(
      _$VerticesDtoImpl _value, $Res Function(_$VerticesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? coordinates = null,
  }) {
    return _then(_$VerticesDtoImpl(
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
class _$VerticesDtoImpl extends _VerticesDto {
  const _$VerticesDtoImpl(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'coordinates')
      required final List<List<List<double>>> coordinates})
      : _coordinates = coordinates,
        super._();

  factory _$VerticesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerticesDtoImplFromJson(json);

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
            other is _$VerticesDtoImpl &&
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
  _$$VerticesDtoImplCopyWith<_$VerticesDtoImpl> get copyWith =>
      __$$VerticesDtoImplCopyWithImpl<_$VerticesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerticesDtoImplToJson(
      this,
    );
  }
}

abstract class _VerticesDto extends VerticesDto {
  const factory _VerticesDto(
      {@JsonKey(name: 'type') required final String type,
      @JsonKey(name: 'coordinates')
      required final List<List<List<double>>> coordinates}) = _$VerticesDtoImpl;
  const _VerticesDto._() : super._();

  factory _VerticesDto.fromJson(Map<String, dynamic> json) =
      _$VerticesDtoImpl.fromJson;

  @override
  @JsonKey(name: 'type')
  String get type;
  @override
  @JsonKey(name: 'coordinates')
  List<List<List<double>>> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$VerticesDtoImplCopyWith<_$VerticesDtoImpl> get copyWith =>
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
abstract class _$$CreateBoundaryDtoImplCopyWith<$Res>
    implements $CreateBoundaryDtoCopyWith<$Res> {
  factory _$$CreateBoundaryDtoImplCopyWith(_$CreateBoundaryDtoImpl value,
          $Res Function(_$CreateBoundaryDtoImpl) then) =
      __$$CreateBoundaryDtoImplCopyWithImpl<$Res>;
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
class __$$CreateBoundaryDtoImplCopyWithImpl<$Res>
    extends _$CreateBoundaryDtoCopyWithImpl<$Res, _$CreateBoundaryDtoImpl>
    implements _$$CreateBoundaryDtoImplCopyWith<$Res> {
  __$$CreateBoundaryDtoImplCopyWithImpl(_$CreateBoundaryDtoImpl _value,
      $Res Function(_$CreateBoundaryDtoImpl) _then)
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
    return _then(_$CreateBoundaryDtoImpl(
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
class _$CreateBoundaryDtoImpl extends _CreateBoundaryDto {
  const _$CreateBoundaryDtoImpl(
      {@JsonKey(name: 'place') required this.placeId,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'vertices') required this.vertices})
      : super._();

  factory _$CreateBoundaryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateBoundaryDtoImplFromJson(json);

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
            other is _$CreateBoundaryDtoImpl &&
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
  _$$CreateBoundaryDtoImplCopyWith<_$CreateBoundaryDtoImpl> get copyWith =>
      __$$CreateBoundaryDtoImplCopyWithImpl<_$CreateBoundaryDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateBoundaryDtoImplToJson(
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
      _$CreateBoundaryDtoImpl;
  const _CreateBoundaryDto._() : super._();

  factory _CreateBoundaryDto.fromJson(Map<String, dynamic> json) =
      _$CreateBoundaryDtoImpl.fromJson;

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
  _$$CreateBoundaryDtoImplCopyWith<_$CreateBoundaryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

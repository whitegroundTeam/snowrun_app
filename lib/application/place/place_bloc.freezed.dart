// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaces,
    required TResult Function() getPlace,
    required TResult Function(
            int placeId,
            String name,
            BoundaryType boundaryType,
            BoundaryStatus boundaryStatus,
            List<List<double>> polygon)
        createBoundary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaces,
    TResult? Function()? getPlace,
    TResult? Function(int placeId, String name, BoundaryType boundaryType,
            BoundaryStatus boundaryStatus, List<List<double>> polygon)?
        createBoundary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getPlace,
    TResult Function(int placeId, String name, BoundaryType boundaryType,
            BoundaryStatus boundaryStatus, List<List<double>> polygon)?
        createBoundary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaces value) getPlaces,
    required TResult Function(_GetPlace value) getPlace,
    required TResult Function(_CreateBoundary value) createBoundary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaces value)? getPlaces,
    TResult? Function(_GetPlace value)? getPlace,
    TResult? Function(_CreateBoundary value)? createBoundary,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaces value)? getPlaces,
    TResult Function(_GetPlace value)? getPlace,
    TResult Function(_CreateBoundary value)? createBoundary,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceEventCopyWith<$Res> {
  factory $PlaceEventCopyWith(
          PlaceEvent value, $Res Function(PlaceEvent) then) =
      _$PlaceEventCopyWithImpl<$Res, PlaceEvent>;
}

/// @nodoc
class _$PlaceEventCopyWithImpl<$Res, $Val extends PlaceEvent>
    implements $PlaceEventCopyWith<$Res> {
  _$PlaceEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPlacesImplCopyWith<$Res> {
  factory _$$GetPlacesImplCopyWith(
          _$GetPlacesImpl value, $Res Function(_$GetPlacesImpl) then) =
      __$$GetPlacesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlacesImplCopyWithImpl<$Res>
    extends _$PlaceEventCopyWithImpl<$Res, _$GetPlacesImpl>
    implements _$$GetPlacesImplCopyWith<$Res> {
  __$$GetPlacesImplCopyWithImpl(
      _$GetPlacesImpl _value, $Res Function(_$GetPlacesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPlacesImpl implements _GetPlaces {
  const _$GetPlacesImpl();

  @override
  String toString() {
    return 'PlaceEvent.getPlaces()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlacesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaces,
    required TResult Function() getPlace,
    required TResult Function(
            int placeId,
            String name,
            BoundaryType boundaryType,
            BoundaryStatus boundaryStatus,
            List<List<double>> polygon)
        createBoundary,
  }) {
    return getPlaces();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaces,
    TResult? Function()? getPlace,
    TResult? Function(int placeId, String name, BoundaryType boundaryType,
            BoundaryStatus boundaryStatus, List<List<double>> polygon)?
        createBoundary,
  }) {
    return getPlaces?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getPlace,
    TResult Function(int placeId, String name, BoundaryType boundaryType,
            BoundaryStatus boundaryStatus, List<List<double>> polygon)?
        createBoundary,
    required TResult orElse(),
  }) {
    if (getPlaces != null) {
      return getPlaces();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaces value) getPlaces,
    required TResult Function(_GetPlace value) getPlace,
    required TResult Function(_CreateBoundary value) createBoundary,
  }) {
    return getPlaces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaces value)? getPlaces,
    TResult? Function(_GetPlace value)? getPlace,
    TResult? Function(_CreateBoundary value)? createBoundary,
  }) {
    return getPlaces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaces value)? getPlaces,
    TResult Function(_GetPlace value)? getPlace,
    TResult Function(_CreateBoundary value)? createBoundary,
    required TResult orElse(),
  }) {
    if (getPlaces != null) {
      return getPlaces(this);
    }
    return orElse();
  }
}

abstract class _GetPlaces implements PlaceEvent {
  const factory _GetPlaces() = _$GetPlacesImpl;
}

/// @nodoc
abstract class _$$GetPlaceImplCopyWith<$Res> {
  factory _$$GetPlaceImplCopyWith(
          _$GetPlaceImpl value, $Res Function(_$GetPlaceImpl) then) =
      __$$GetPlaceImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPlaceImplCopyWithImpl<$Res>
    extends _$PlaceEventCopyWithImpl<$Res, _$GetPlaceImpl>
    implements _$$GetPlaceImplCopyWith<$Res> {
  __$$GetPlaceImplCopyWithImpl(
      _$GetPlaceImpl _value, $Res Function(_$GetPlaceImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPlaceImpl implements _GetPlace {
  const _$GetPlaceImpl();

  @override
  String toString() {
    return 'PlaceEvent.getPlace()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetPlaceImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaces,
    required TResult Function() getPlace,
    required TResult Function(
            int placeId,
            String name,
            BoundaryType boundaryType,
            BoundaryStatus boundaryStatus,
            List<List<double>> polygon)
        createBoundary,
  }) {
    return getPlace();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaces,
    TResult? Function()? getPlace,
    TResult? Function(int placeId, String name, BoundaryType boundaryType,
            BoundaryStatus boundaryStatus, List<List<double>> polygon)?
        createBoundary,
  }) {
    return getPlace?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getPlace,
    TResult Function(int placeId, String name, BoundaryType boundaryType,
            BoundaryStatus boundaryStatus, List<List<double>> polygon)?
        createBoundary,
    required TResult orElse(),
  }) {
    if (getPlace != null) {
      return getPlace();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaces value) getPlaces,
    required TResult Function(_GetPlace value) getPlace,
    required TResult Function(_CreateBoundary value) createBoundary,
  }) {
    return getPlace(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaces value)? getPlaces,
    TResult? Function(_GetPlace value)? getPlace,
    TResult? Function(_CreateBoundary value)? createBoundary,
  }) {
    return getPlace?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaces value)? getPlaces,
    TResult Function(_GetPlace value)? getPlace,
    TResult Function(_CreateBoundary value)? createBoundary,
    required TResult orElse(),
  }) {
    if (getPlace != null) {
      return getPlace(this);
    }
    return orElse();
  }
}

abstract class _GetPlace implements PlaceEvent {
  const factory _GetPlace() = _$GetPlaceImpl;
}

/// @nodoc
abstract class _$$CreateBoundaryImplCopyWith<$Res> {
  factory _$$CreateBoundaryImplCopyWith(_$CreateBoundaryImpl value,
          $Res Function(_$CreateBoundaryImpl) then) =
      __$$CreateBoundaryImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int placeId,
      String name,
      BoundaryType boundaryType,
      BoundaryStatus boundaryStatus,
      List<List<double>> polygon});
}

/// @nodoc
class __$$CreateBoundaryImplCopyWithImpl<$Res>
    extends _$PlaceEventCopyWithImpl<$Res, _$CreateBoundaryImpl>
    implements _$$CreateBoundaryImplCopyWith<$Res> {
  __$$CreateBoundaryImplCopyWithImpl(
      _$CreateBoundaryImpl _value, $Res Function(_$CreateBoundaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? name = null,
    Object? boundaryType = null,
    Object? boundaryStatus = null,
    Object? polygon = null,
  }) {
    return _then(_$CreateBoundaryImpl(
      null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == boundaryType
          ? _value.boundaryType
          : boundaryType // ignore: cast_nullable_to_non_nullable
              as BoundaryType,
      null == boundaryStatus
          ? _value.boundaryStatus
          : boundaryStatus // ignore: cast_nullable_to_non_nullable
              as BoundaryStatus,
      null == polygon
          ? _value._polygon
          : polygon // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
    ));
  }
}

/// @nodoc

class _$CreateBoundaryImpl implements _CreateBoundary {
  const _$CreateBoundaryImpl(this.placeId, this.name, this.boundaryType,
      this.boundaryStatus, final List<List<double>> polygon)
      : _polygon = polygon;

  @override
  final int placeId;
  @override
  final String name;
  @override
  final BoundaryType boundaryType;
  @override
  final BoundaryStatus boundaryStatus;
  final List<List<double>> _polygon;
  @override
  List<List<double>> get polygon {
    if (_polygon is EqualUnmodifiableListView) return _polygon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_polygon);
  }

  @override
  String toString() {
    return 'PlaceEvent.createBoundary(placeId: $placeId, name: $name, boundaryType: $boundaryType, boundaryStatus: $boundaryStatus, polygon: $polygon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBoundaryImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.boundaryType, boundaryType) ||
                other.boundaryType == boundaryType) &&
            (identical(other.boundaryStatus, boundaryStatus) ||
                other.boundaryStatus == boundaryStatus) &&
            const DeepCollectionEquality().equals(other._polygon, _polygon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, placeId, name, boundaryType,
      boundaryStatus, const DeepCollectionEquality().hash(_polygon));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBoundaryImplCopyWith<_$CreateBoundaryImpl> get copyWith =>
      __$$CreateBoundaryImplCopyWithImpl<_$CreateBoundaryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getPlaces,
    required TResult Function() getPlace,
    required TResult Function(
            int placeId,
            String name,
            BoundaryType boundaryType,
            BoundaryStatus boundaryStatus,
            List<List<double>> polygon)
        createBoundary,
  }) {
    return createBoundary(placeId, name, boundaryType, boundaryStatus, polygon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getPlaces,
    TResult? Function()? getPlace,
    TResult? Function(int placeId, String name, BoundaryType boundaryType,
            BoundaryStatus boundaryStatus, List<List<double>> polygon)?
        createBoundary,
  }) {
    return createBoundary?.call(
        placeId, name, boundaryType, boundaryStatus, polygon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getPlaces,
    TResult Function()? getPlace,
    TResult Function(int placeId, String name, BoundaryType boundaryType,
            BoundaryStatus boundaryStatus, List<List<double>> polygon)?
        createBoundary,
    required TResult orElse(),
  }) {
    if (createBoundary != null) {
      return createBoundary(
          placeId, name, boundaryType, boundaryStatus, polygon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetPlaces value) getPlaces,
    required TResult Function(_GetPlace value) getPlace,
    required TResult Function(_CreateBoundary value) createBoundary,
  }) {
    return createBoundary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetPlaces value)? getPlaces,
    TResult? Function(_GetPlace value)? getPlace,
    TResult? Function(_CreateBoundary value)? createBoundary,
  }) {
    return createBoundary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetPlaces value)? getPlaces,
    TResult Function(_GetPlace value)? getPlace,
    TResult Function(_CreateBoundary value)? createBoundary,
    required TResult orElse(),
  }) {
    if (createBoundary != null) {
      return createBoundary(this);
    }
    return orElse();
  }
}

abstract class _CreateBoundary implements PlaceEvent {
  const factory _CreateBoundary(
      final int placeId,
      final String name,
      final BoundaryType boundaryType,
      final BoundaryStatus boundaryStatus,
      final List<List<double>> polygon) = _$CreateBoundaryImpl;

  int get placeId;
  String get name;
  BoundaryType get boundaryType;
  BoundaryStatus get boundaryStatus;
  List<List<double>> get polygon;
  @JsonKey(ignore: true)
  _$$CreateBoundaryImplCopyWith<_$CreateBoundaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceState {
  PlaceStatus get status => throw _privateConstructorUsedError;
  List<Place> get places => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlaceStateCopyWith<PlaceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceStateCopyWith<$Res> {
  factory $PlaceStateCopyWith(
          PlaceState value, $Res Function(PlaceState) then) =
      _$PlaceStateCopyWithImpl<$Res, PlaceState>;
  @useResult
  $Res call({PlaceStatus status, List<Place> places});
}

/// @nodoc
class _$PlaceStateCopyWithImpl<$Res, $Val extends PlaceState>
    implements $PlaceStateCopyWith<$Res> {
  _$PlaceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceStateImplCopyWith<$Res>
    implements $PlaceStateCopyWith<$Res> {
  factory _$$PlaceStateImplCopyWith(
          _$PlaceStateImpl value, $Res Function(_$PlaceStateImpl) then) =
      __$$PlaceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceStatus status, List<Place> places});
}

/// @nodoc
class __$$PlaceStateImplCopyWithImpl<$Res>
    extends _$PlaceStateCopyWithImpl<$Res, _$PlaceStateImpl>
    implements _$$PlaceStateImplCopyWith<$Res> {
  __$$PlaceStateImplCopyWithImpl(
      _$PlaceStateImpl _value, $Res Function(_$PlaceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? places = null,
  }) {
    return _then(_$PlaceStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as PlaceStatus,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

class _$PlaceStateImpl implements _PlaceState {
  const _$PlaceStateImpl(
      {required this.status, required final List<Place> places})
      : _places = places;

  @override
  final PlaceStatus status;
  final List<Place> _places;
  @override
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlaceState(status: $status, places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceStateImplCopyWith<_$PlaceStateImpl> get copyWith =>
      __$$PlaceStateImplCopyWithImpl<_$PlaceStateImpl>(this, _$identity);
}

abstract class _PlaceState implements PlaceState {
  const factory _PlaceState(
      {required final PlaceStatus status,
      required final List<Place> places}) = _$PlaceStateImpl;

  @override
  PlaceStatus get status;
  @override
  List<Place> get places;
  @override
  @JsonKey(ignore: true)
  _$$PlaceStateImplCopyWith<_$PlaceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentLocation,
    required TResult Function() startRefreshLocation,
    required TResult Function() stopRefreshLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentLocation,
    TResult? Function()? startRefreshLocation,
    TResult? Function()? stopRefreshLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentLocation,
    TResult Function()? startRefreshLocation,
    TResult Function()? stopRefreshLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_StartRefreshLocation value) startRefreshLocation,
    required TResult Function(_StopRefreshLocation value) stopRefreshLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_StartRefreshLocation value)? startRefreshLocation,
    TResult? Function(_StopRefreshLocation value)? stopRefreshLocation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_StartRefreshLocation value)? startRefreshLocation,
    TResult Function(_StopRefreshLocation value)? stopRefreshLocation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEventCopyWith<$Res> {
  factory $LocationEventCopyWith(
          LocationEvent value, $Res Function(LocationEvent) then) =
      _$LocationEventCopyWithImpl<$Res, LocationEvent>;
}

/// @nodoc
class _$LocationEventCopyWithImpl<$Res, $Val extends LocationEvent>
    implements $LocationEventCopyWith<$Res> {
  _$LocationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCurrentLocationImplCopyWith<$Res> {
  factory _$$GetCurrentLocationImplCopyWith(_$GetCurrentLocationImpl value,
          $Res Function(_$GetCurrentLocationImpl) then) =
      __$$GetCurrentLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCurrentLocationImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$GetCurrentLocationImpl>
    implements _$$GetCurrentLocationImplCopyWith<$Res> {
  __$$GetCurrentLocationImplCopyWithImpl(_$GetCurrentLocationImpl _value,
      $Res Function(_$GetCurrentLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCurrentLocationImpl implements _GetCurrentLocation {
  const _$GetCurrentLocationImpl();

  @override
  String toString() {
    return 'LocationEvent.getCurrentLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCurrentLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentLocation,
    required TResult Function() startRefreshLocation,
    required TResult Function() stopRefreshLocation,
  }) {
    return getCurrentLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentLocation,
    TResult? Function()? startRefreshLocation,
    TResult? Function()? stopRefreshLocation,
  }) {
    return getCurrentLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentLocation,
    TResult Function()? startRefreshLocation,
    TResult Function()? stopRefreshLocation,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_StartRefreshLocation value) startRefreshLocation,
    required TResult Function(_StopRefreshLocation value) stopRefreshLocation,
  }) {
    return getCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_StartRefreshLocation value)? startRefreshLocation,
    TResult? Function(_StopRefreshLocation value)? stopRefreshLocation,
  }) {
    return getCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_StartRefreshLocation value)? startRefreshLocation,
    TResult Function(_StopRefreshLocation value)? stopRefreshLocation,
    required TResult orElse(),
  }) {
    if (getCurrentLocation != null) {
      return getCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _GetCurrentLocation implements LocationEvent {
  const factory _GetCurrentLocation() = _$GetCurrentLocationImpl;
}

/// @nodoc
abstract class _$$StartRefreshLocationImplCopyWith<$Res> {
  factory _$$StartRefreshLocationImplCopyWith(_$StartRefreshLocationImpl value,
          $Res Function(_$StartRefreshLocationImpl) then) =
      __$$StartRefreshLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartRefreshLocationImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$StartRefreshLocationImpl>
    implements _$$StartRefreshLocationImplCopyWith<$Res> {
  __$$StartRefreshLocationImplCopyWithImpl(_$StartRefreshLocationImpl _value,
      $Res Function(_$StartRefreshLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartRefreshLocationImpl implements _StartRefreshLocation {
  const _$StartRefreshLocationImpl();

  @override
  String toString() {
    return 'LocationEvent.startRefreshLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartRefreshLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentLocation,
    required TResult Function() startRefreshLocation,
    required TResult Function() stopRefreshLocation,
  }) {
    return startRefreshLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentLocation,
    TResult? Function()? startRefreshLocation,
    TResult? Function()? stopRefreshLocation,
  }) {
    return startRefreshLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentLocation,
    TResult Function()? startRefreshLocation,
    TResult Function()? stopRefreshLocation,
    required TResult orElse(),
  }) {
    if (startRefreshLocation != null) {
      return startRefreshLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_StartRefreshLocation value) startRefreshLocation,
    required TResult Function(_StopRefreshLocation value) stopRefreshLocation,
  }) {
    return startRefreshLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_StartRefreshLocation value)? startRefreshLocation,
    TResult? Function(_StopRefreshLocation value)? stopRefreshLocation,
  }) {
    return startRefreshLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_StartRefreshLocation value)? startRefreshLocation,
    TResult Function(_StopRefreshLocation value)? stopRefreshLocation,
    required TResult orElse(),
  }) {
    if (startRefreshLocation != null) {
      return startRefreshLocation(this);
    }
    return orElse();
  }
}

abstract class _StartRefreshLocation implements LocationEvent {
  const factory _StartRefreshLocation() = _$StartRefreshLocationImpl;
}

/// @nodoc
abstract class _$$StopRefreshLocationImplCopyWith<$Res> {
  factory _$$StopRefreshLocationImplCopyWith(_$StopRefreshLocationImpl value,
          $Res Function(_$StopRefreshLocationImpl) then) =
      __$$StopRefreshLocationImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopRefreshLocationImplCopyWithImpl<$Res>
    extends _$LocationEventCopyWithImpl<$Res, _$StopRefreshLocationImpl>
    implements _$$StopRefreshLocationImplCopyWith<$Res> {
  __$$StopRefreshLocationImplCopyWithImpl(_$StopRefreshLocationImpl _value,
      $Res Function(_$StopRefreshLocationImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopRefreshLocationImpl implements _StopRefreshLocation {
  const _$StopRefreshLocationImpl();

  @override
  String toString() {
    return 'LocationEvent.stopRefreshLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StopRefreshLocationImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCurrentLocation,
    required TResult Function() startRefreshLocation,
    required TResult Function() stopRefreshLocation,
  }) {
    return stopRefreshLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCurrentLocation,
    TResult? Function()? startRefreshLocation,
    TResult? Function()? stopRefreshLocation,
  }) {
    return stopRefreshLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCurrentLocation,
    TResult Function()? startRefreshLocation,
    TResult Function()? stopRefreshLocation,
    required TResult orElse(),
  }) {
    if (stopRefreshLocation != null) {
      return stopRefreshLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCurrentLocation value) getCurrentLocation,
    required TResult Function(_StartRefreshLocation value) startRefreshLocation,
    required TResult Function(_StopRefreshLocation value) stopRefreshLocation,
  }) {
    return stopRefreshLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult? Function(_StartRefreshLocation value)? startRefreshLocation,
    TResult? Function(_StopRefreshLocation value)? stopRefreshLocation,
  }) {
    return stopRefreshLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCurrentLocation value)? getCurrentLocation,
    TResult Function(_StartRefreshLocation value)? startRefreshLocation,
    TResult Function(_StopRefreshLocation value)? stopRefreshLocation,
    required TResult orElse(),
  }) {
    if (stopRefreshLocation != null) {
      return stopRefreshLocation(this);
    }
    return orElse();
  }
}

abstract class _StopRefreshLocation implements LocationEvent {
  const factory _StopRefreshLocation() = _$StopRefreshLocationImpl;
}

/// @nodoc
mixin _$LocationState {
  LocationStatus get status => throw _privateConstructorUsedError;
  UserLocation get userLocation => throw _privateConstructorUsedError;
  bool get isInit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res, LocationState>;
  @useResult
  $Res call({LocationStatus status, UserLocation userLocation, bool isInit});

  $UserLocationCopyWith<$Res> get userLocation;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res, $Val extends LocationState>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userLocation = null,
    Object? isInit = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationStatus,
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as UserLocation,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserLocationCopyWith<$Res> get userLocation {
    return $UserLocationCopyWith<$Res>(_value.userLocation, (value) {
      return _then(_value.copyWith(userLocation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LocationStateImplCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$$LocationStateImplCopyWith(
          _$LocationStateImpl value, $Res Function(_$LocationStateImpl) then) =
      __$$LocationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LocationStatus status, UserLocation userLocation, bool isInit});

  @override
  $UserLocationCopyWith<$Res> get userLocation;
}

/// @nodoc
class __$$LocationStateImplCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res, _$LocationStateImpl>
    implements _$$LocationStateImplCopyWith<$Res> {
  __$$LocationStateImplCopyWithImpl(
      _$LocationStateImpl _value, $Res Function(_$LocationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? userLocation = null,
    Object? isInit = null,
  }) {
    return _then(_$LocationStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as LocationStatus,
      userLocation: null == userLocation
          ? _value.userLocation
          : userLocation // ignore: cast_nullable_to_non_nullable
              as UserLocation,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LocationStateImpl implements _LocationState {
  const _$LocationStateImpl(
      {required this.status, required this.userLocation, required this.isInit});

  @override
  final LocationStatus status;
  @override
  final UserLocation userLocation;
  @override
  final bool isInit;

  @override
  String toString() {
    return 'LocationState(status: $status, userLocation: $userLocation, isInit: $isInit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.userLocation, userLocation) ||
                other.userLocation == userLocation) &&
            (identical(other.isInit, isInit) || other.isInit == isInit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, userLocation, isInit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      __$$LocationStateImplCopyWithImpl<_$LocationStateImpl>(this, _$identity);
}

abstract class _LocationState implements LocationState {
  const factory _LocationState(
      {required final LocationStatus status,
      required final UserLocation userLocation,
      required final bool isInit}) = _$LocationStateImpl;

  @override
  LocationStatus get status;
  @override
  UserLocation get userLocation;
  @override
  bool get isInit;
  @override
  @JsonKey(ignore: true)
  _$$LocationStateImplCopyWith<_$LocationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

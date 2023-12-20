// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityCenter {
  DoubleVO get id => throw _privateConstructorUsedError;
  StringVO get name => throw _privateConstructorUsedError;
  LatLng get location => throw _privateConstructorUsedError;

  /// Create a copy of ActivityCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActivityCenterCopyWith<ActivityCenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityCenterCopyWith<$Res> {
  factory $ActivityCenterCopyWith(
          ActivityCenter value, $Res Function(ActivityCenter) then) =
      _$ActivityCenterCopyWithImpl<$Res, ActivityCenter>;
  @useResult
  $Res call({DoubleVO id, StringVO name, LatLng location});

  $LatLngCopyWith<$Res> get location;
}

/// @nodoc
class _$ActivityCenterCopyWithImpl<$Res, $Val extends ActivityCenter>
    implements $ActivityCenterCopyWith<$Res> {
  _$ActivityCenterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActivityCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ) as $Val);
  }

  /// Create a copy of ActivityCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LatLngCopyWith<$Res> get location {
    return $LatLngCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityCenterImplCopyWith<$Res>
    implements $ActivityCenterCopyWith<$Res> {
  factory _$$ActivityCenterImplCopyWith(_$ActivityCenterImpl value,
          $Res Function(_$ActivityCenterImpl) then) =
      __$$ActivityCenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DoubleVO id, StringVO name, LatLng location});

  @override
  $LatLngCopyWith<$Res> get location;
}

/// @nodoc
class __$$ActivityCenterImplCopyWithImpl<$Res>
    extends _$ActivityCenterCopyWithImpl<$Res, _$ActivityCenterImpl>
    implements _$$ActivityCenterImplCopyWith<$Res> {
  __$$ActivityCenterImplCopyWithImpl(
      _$ActivityCenterImpl _value, $Res Function(_$ActivityCenterImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActivityCenter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? location = null,
  }) {
    return _then(_$ActivityCenterImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$ActivityCenterImpl extends _ActivityCenter {
  const _$ActivityCenterImpl(
      {required this.id, required this.name, required this.location})
      : super._();

  @override
  final DoubleVO id;
  @override
  final StringVO name;
  @override
  final LatLng location;

  @override
  String toString() {
    return 'ActivityCenter(id: $id, name: $name, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityCenterImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, location);

  /// Create a copy of ActivityCenter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityCenterImplCopyWith<_$ActivityCenterImpl> get copyWith =>
      __$$ActivityCenterImplCopyWithImpl<_$ActivityCenterImpl>(
          this, _$identity);
}

abstract class _ActivityCenter extends ActivityCenter {
  const factory _ActivityCenter(
      {required final DoubleVO id,
      required final StringVO name,
      required final LatLng location}) = _$ActivityCenterImpl;
  const _ActivityCenter._() : super._();

  @override
  DoubleVO get id;
  @override
  StringVO get name;
  @override
  LatLng get location;

  /// Create a copy of ActivityCenter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActivityCenterImplCopyWith<_$ActivityCenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

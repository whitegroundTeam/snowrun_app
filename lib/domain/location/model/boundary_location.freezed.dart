// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boundary_location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoundaryLocation {
  ListVO<List<List<double>>> get coordinates =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoundaryLocationCopyWith<BoundaryLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundaryLocationCopyWith<$Res> {
  factory $BoundaryLocationCopyWith(
          BoundaryLocation value, $Res Function(BoundaryLocation) then) =
      _$BoundaryLocationCopyWithImpl<$Res, BoundaryLocation>;
  @useResult
  $Res call({ListVO<List<List<double>>> coordinates});
}

/// @nodoc
class _$BoundaryLocationCopyWithImpl<$Res, $Val extends BoundaryLocation>
    implements $BoundaryLocationCopyWith<$Res> {
  _$BoundaryLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_value.copyWith(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ListVO<List<List<double>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoundaryLocationCopyWith<$Res>
    implements $BoundaryLocationCopyWith<$Res> {
  factory _$$_BoundaryLocationCopyWith(
          _$_BoundaryLocation value, $Res Function(_$_BoundaryLocation) then) =
      __$$_BoundaryLocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListVO<List<List<double>>> coordinates});
}

/// @nodoc
class __$$_BoundaryLocationCopyWithImpl<$Res>
    extends _$BoundaryLocationCopyWithImpl<$Res, _$_BoundaryLocation>
    implements _$$_BoundaryLocationCopyWith<$Res> {
  __$$_BoundaryLocationCopyWithImpl(
      _$_BoundaryLocation _value, $Res Function(_$_BoundaryLocation) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
  }) {
    return _then(_$_BoundaryLocation(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as ListVO<List<List<double>>>,
    ));
  }
}

/// @nodoc

class _$_BoundaryLocation extends _BoundaryLocation {
  const _$_BoundaryLocation({required this.coordinates}) : super._();

  @override
  final ListVO<List<List<double>>> coordinates;

  @override
  String toString() {
    return 'BoundaryLocation(coordinates: $coordinates)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoundaryLocation &&
            (identical(other.coordinates, coordinates) ||
                other.coordinates == coordinates));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coordinates);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoundaryLocationCopyWith<_$_BoundaryLocation> get copyWith =>
      __$$_BoundaryLocationCopyWithImpl<_$_BoundaryLocation>(this, _$identity);
}

abstract class _BoundaryLocation extends BoundaryLocation {
  const factory _BoundaryLocation(
          {required final ListVO<List<List<double>>> coordinates}) =
      _$_BoundaryLocation;
  const _BoundaryLocation._() : super._();

  @override
  ListVO<List<List<double>>> get coordinates;
  @override
  @JsonKey(ignore: true)
  _$$_BoundaryLocationCopyWith<_$_BoundaryLocation> get copyWith =>
      throw _privateConstructorUsedError;
}
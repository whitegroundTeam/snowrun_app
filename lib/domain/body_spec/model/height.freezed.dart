// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'height.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Height {
  Range? get range => throw _privateConstructorUsedError;
  HeightUnit get unit => throw _privateConstructorUsedError;

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HeightCopyWith<Height> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeightCopyWith<$Res> {
  factory $HeightCopyWith(Height value, $Res Function(Height) then) =
      _$HeightCopyWithImpl<$Res, Height>;
  @useResult
  $Res call({Range? range, HeightUnit unit});

  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class _$HeightCopyWithImpl<$Res, $Val extends Height>
    implements $HeightCopyWith<$Res> {
  _$HeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = freezed,
    Object? unit = null,
  }) {
    return _then(_value.copyWith(
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as HeightUnit,
    ) as $Val);
  }

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RangeCopyWith<$Res>? get range {
    if (_value.range == null) {
      return null;
    }

    return $RangeCopyWith<$Res>(_value.range!, (value) {
      return _then(_value.copyWith(range: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HeightImplCopyWith<$Res> implements $HeightCopyWith<$Res> {
  factory _$$HeightImplCopyWith(
          _$HeightImpl value, $Res Function(_$HeightImpl) then) =
      __$$HeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Range? range, HeightUnit unit});

  @override
  $RangeCopyWith<$Res>? get range;
}

/// @nodoc
class __$$HeightImplCopyWithImpl<$Res>
    extends _$HeightCopyWithImpl<$Res, _$HeightImpl>
    implements _$$HeightImplCopyWith<$Res> {
  __$$HeightImplCopyWithImpl(
      _$HeightImpl _value, $Res Function(_$HeightImpl) _then)
      : super(_value, _then);

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? range = freezed,
    Object? unit = null,
  }) {
    return _then(_$HeightImpl(
      range: freezed == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as Range?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as HeightUnit,
    ));
  }
}

/// @nodoc

class _$HeightImpl extends _Height {
  const _$HeightImpl({required this.range, required this.unit}) : super._();

  @override
  final Range? range;
  @override
  final HeightUnit unit;

  @override
  String toString() {
    return 'Height(range: $range, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HeightImpl &&
            (identical(other.range, range) || other.range == range) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, range, unit);

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HeightImplCopyWith<_$HeightImpl> get copyWith =>
      __$$HeightImplCopyWithImpl<_$HeightImpl>(this, _$identity);
}

abstract class _Height extends Height {
  const factory _Height(
      {required final Range? range,
      required final HeightUnit unit}) = _$HeightImpl;
  const _Height._() : super._();

  @override
  Range? get range;
  @override
  HeightUnit get unit;

  /// Create a copy of Height
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HeightImplCopyWith<_$HeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

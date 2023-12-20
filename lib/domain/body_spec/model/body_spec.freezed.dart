// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_spec.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BodySpec {
  Weight? get weight => throw _privateConstructorUsedError;
  Height? get height => throw _privateConstructorUsedError;
  FootSize? get footSize => throw _privateConstructorUsedError;
  DoubleVO get din => throw _privateConstructorUsedError;

  /// Create a copy of BodySpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodySpecCopyWith<BodySpec> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodySpecCopyWith<$Res> {
  factory $BodySpecCopyWith(BodySpec value, $Res Function(BodySpec) then) =
      _$BodySpecCopyWithImpl<$Res, BodySpec>;
  @useResult
  $Res call({Weight? weight, Height? height, FootSize? footSize, DoubleVO din});

  $WeightCopyWith<$Res>? get weight;
  $HeightCopyWith<$Res>? get height;
  $FootSizeCopyWith<$Res>? get footSize;
}

/// @nodoc
class _$BodySpecCopyWithImpl<$Res, $Val extends BodySpec>
    implements $BodySpecCopyWith<$Res> {
  _$BodySpecCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodySpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = freezed,
    Object? height = freezed,
    Object? footSize = freezed,
    Object? din = null,
  }) {
    return _then(_value.copyWith(
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height?,
      footSize: freezed == footSize
          ? _value.footSize
          : footSize // ignore: cast_nullable_to_non_nullable
              as FootSize?,
      din: null == din
          ? _value.din
          : din // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
    ) as $Val);
  }

  /// Create a copy of BodySpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeightCopyWith<$Res>? get weight {
    if (_value.weight == null) {
      return null;
    }

    return $WeightCopyWith<$Res>(_value.weight!, (value) {
      return _then(_value.copyWith(weight: value) as $Val);
    });
  }

  /// Create a copy of BodySpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HeightCopyWith<$Res>? get height {
    if (_value.height == null) {
      return null;
    }

    return $HeightCopyWith<$Res>(_value.height!, (value) {
      return _then(_value.copyWith(height: value) as $Val);
    });
  }

  /// Create a copy of BodySpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FootSizeCopyWith<$Res>? get footSize {
    if (_value.footSize == null) {
      return null;
    }

    return $FootSizeCopyWith<$Res>(_value.footSize!, (value) {
      return _then(_value.copyWith(footSize: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BodySpecImplCopyWith<$Res>
    implements $BodySpecCopyWith<$Res> {
  factory _$$BodySpecImplCopyWith(
          _$BodySpecImpl value, $Res Function(_$BodySpecImpl) then) =
      __$$BodySpecImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Weight? weight, Height? height, FootSize? footSize, DoubleVO din});

  @override
  $WeightCopyWith<$Res>? get weight;
  @override
  $HeightCopyWith<$Res>? get height;
  @override
  $FootSizeCopyWith<$Res>? get footSize;
}

/// @nodoc
class __$$BodySpecImplCopyWithImpl<$Res>
    extends _$BodySpecCopyWithImpl<$Res, _$BodySpecImpl>
    implements _$$BodySpecImplCopyWith<$Res> {
  __$$BodySpecImplCopyWithImpl(
      _$BodySpecImpl _value, $Res Function(_$BodySpecImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodySpec
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = freezed,
    Object? height = freezed,
    Object? footSize = freezed,
    Object? din = null,
  }) {
    return _then(_$BodySpecImpl(
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height?,
      footSize: freezed == footSize
          ? _value.footSize
          : footSize // ignore: cast_nullable_to_non_nullable
              as FootSize?,
      din: null == din
          ? _value.din
          : din // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
    ));
  }
}

/// @nodoc

class _$BodySpecImpl extends _BodySpec {
  const _$BodySpecImpl(
      {required this.weight,
      required this.height,
      required this.footSize,
      required this.din})
      : super._();

  @override
  final Weight? weight;
  @override
  final Height? height;
  @override
  final FootSize? footSize;
  @override
  final DoubleVO din;

  @override
  String toString() {
    return 'BodySpec(weight: $weight, height: $height, footSize: $footSize, din: $din)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodySpecImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.footSize, footSize) ||
                other.footSize == footSize) &&
            (identical(other.din, din) || other.din == din));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weight, height, footSize, din);

  /// Create a copy of BodySpec
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodySpecImplCopyWith<_$BodySpecImpl> get copyWith =>
      __$$BodySpecImplCopyWithImpl<_$BodySpecImpl>(this, _$identity);
}

abstract class _BodySpec extends BodySpec {
  const factory _BodySpec(
      {required final Weight? weight,
      required final Height? height,
      required final FootSize? footSize,
      required final DoubleVO din}) = _$BodySpecImpl;
  const _BodySpec._() : super._();

  @override
  Weight? get weight;
  @override
  Height? get height;
  @override
  FootSize? get footSize;
  @override
  DoubleVO get din;

  /// Create a copy of BodySpec
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodySpecImplCopyWith<_$BodySpecImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

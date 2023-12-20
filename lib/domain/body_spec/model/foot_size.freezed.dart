// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'foot_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FootSize {
  BodySpecValue? get value => throw _privateConstructorUsedError;
  FootSizeUnit get unit => throw _privateConstructorUsedError;
  ListVO<FootShape> get footShapes => throw _privateConstructorUsedError;

  /// Create a copy of FootSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FootSizeCopyWith<FootSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FootSizeCopyWith<$Res> {
  factory $FootSizeCopyWith(FootSize value, $Res Function(FootSize) then) =
      _$FootSizeCopyWithImpl<$Res, FootSize>;
  @useResult
  $Res call(
      {BodySpecValue? value, FootSizeUnit unit, ListVO<FootShape> footShapes});

  $BodySpecValueCopyWith<$Res>? get value;
}

/// @nodoc
class _$FootSizeCopyWithImpl<$Res, $Val extends FootSize>
    implements $FootSizeCopyWith<$Res> {
  _$FootSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FootSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = null,
    Object? footShapes = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BodySpecValue?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as FootSizeUnit,
      footShapes: null == footShapes
          ? _value.footShapes
          : footShapes // ignore: cast_nullable_to_non_nullable
              as ListVO<FootShape>,
    ) as $Val);
  }

  /// Create a copy of FootSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodySpecValueCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $BodySpecValueCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FootSizeImplCopyWith<$Res>
    implements $FootSizeCopyWith<$Res> {
  factory _$$FootSizeImplCopyWith(
          _$FootSizeImpl value, $Res Function(_$FootSizeImpl) then) =
      __$$FootSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BodySpecValue? value, FootSizeUnit unit, ListVO<FootShape> footShapes});

  @override
  $BodySpecValueCopyWith<$Res>? get value;
}

/// @nodoc
class __$$FootSizeImplCopyWithImpl<$Res>
    extends _$FootSizeCopyWithImpl<$Res, _$FootSizeImpl>
    implements _$$FootSizeImplCopyWith<$Res> {
  __$$FootSizeImplCopyWithImpl(
      _$FootSizeImpl _value, $Res Function(_$FootSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of FootSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? unit = null,
    Object? footShapes = null,
  }) {
    return _then(_$FootSizeImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as BodySpecValue?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as FootSizeUnit,
      footShapes: null == footShapes
          ? _value.footShapes
          : footShapes // ignore: cast_nullable_to_non_nullable
              as ListVO<FootShape>,
    ));
  }
}

/// @nodoc

class _$FootSizeImpl extends _FootSize {
  const _$FootSizeImpl(
      {required this.value, required this.unit, required this.footShapes})
      : super._();

  @override
  final BodySpecValue? value;
  @override
  final FootSizeUnit unit;
  @override
  final ListVO<FootShape> footShapes;

  @override
  String toString() {
    return 'FootSize(value: $value, unit: $unit, footShapes: $footShapes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FootSizeImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.footShapes, footShapes) ||
                other.footShapes == footShapes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, unit, footShapes);

  /// Create a copy of FootSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FootSizeImplCopyWith<_$FootSizeImpl> get copyWith =>
      __$$FootSizeImplCopyWithImpl<_$FootSizeImpl>(this, _$identity);
}

abstract class _FootSize extends FootSize {
  const factory _FootSize(
      {required final BodySpecValue? value,
      required final FootSizeUnit unit,
      required final ListVO<FootShape> footShapes}) = _$FootSizeImpl;
  const _FootSize._() : super._();

  @override
  BodySpecValue? get value;
  @override
  FootSizeUnit get unit;
  @override
  ListVO<FootShape> get footShapes;

  /// Create a copy of FootSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FootSizeImplCopyWith<_$FootSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_spec_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BodySpecValue {
  DoubleVO get value => throw _privateConstructorUsedError;
  IntVO get decimalPlaces => throw _privateConstructorUsedError;

  /// Create a copy of BodySpecValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodySpecValueCopyWith<BodySpecValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodySpecValueCopyWith<$Res> {
  factory $BodySpecValueCopyWith(
          BodySpecValue value, $Res Function(BodySpecValue) then) =
      _$BodySpecValueCopyWithImpl<$Res, BodySpecValue>;
  @useResult
  $Res call({DoubleVO value, IntVO decimalPlaces});
}

/// @nodoc
class _$BodySpecValueCopyWithImpl<$Res, $Val extends BodySpecValue>
    implements $BodySpecValueCopyWith<$Res> {
  _$BodySpecValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodySpecValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? decimalPlaces = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      decimalPlaces: null == decimalPlaces
          ? _value.decimalPlaces
          : decimalPlaces // ignore: cast_nullable_to_non_nullable
              as IntVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodySpecValueImplCopyWith<$Res>
    implements $BodySpecValueCopyWith<$Res> {
  factory _$$BodySpecValueImplCopyWith(
          _$BodySpecValueImpl value, $Res Function(_$BodySpecValueImpl) then) =
      __$$BodySpecValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DoubleVO value, IntVO decimalPlaces});
}

/// @nodoc
class __$$BodySpecValueImplCopyWithImpl<$Res>
    extends _$BodySpecValueCopyWithImpl<$Res, _$BodySpecValueImpl>
    implements _$$BodySpecValueImplCopyWith<$Res> {
  __$$BodySpecValueImplCopyWithImpl(
      _$BodySpecValueImpl _value, $Res Function(_$BodySpecValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodySpecValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? decimalPlaces = null,
  }) {
    return _then(_$BodySpecValueImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      decimalPlaces: null == decimalPlaces
          ? _value.decimalPlaces
          : decimalPlaces // ignore: cast_nullable_to_non_nullable
              as IntVO,
    ));
  }
}

/// @nodoc

class _$BodySpecValueImpl extends _BodySpecValue {
  const _$BodySpecValueImpl({required this.value, required this.decimalPlaces})
      : super._();

  @override
  final DoubleVO value;
  @override
  final IntVO decimalPlaces;

  @override
  String toString() {
    return 'BodySpecValue(value: $value, decimalPlaces: $decimalPlaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodySpecValueImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.decimalPlaces, decimalPlaces) ||
                other.decimalPlaces == decimalPlaces));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, decimalPlaces);

  /// Create a copy of BodySpecValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodySpecValueImplCopyWith<_$BodySpecValueImpl> get copyWith =>
      __$$BodySpecValueImplCopyWithImpl<_$BodySpecValueImpl>(this, _$identity);
}

abstract class _BodySpecValue extends BodySpecValue {
  const factory _BodySpecValue(
      {required final DoubleVO value,
      required final IntVO decimalPlaces}) = _$BodySpecValueImpl;
  const _BodySpecValue._() : super._();

  @override
  DoubleVO get value;
  @override
  IntVO get decimalPlaces;

  /// Create a copy of BodySpecValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodySpecValueImplCopyWith<_$BodySpecValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

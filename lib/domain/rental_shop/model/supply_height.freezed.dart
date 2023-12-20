// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supply_height.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupplyHeight {
  HeightUnit get defaultHeightUnit => throw _privateConstructorUsedError;
  MapVO<HeightUnit, List<Range>> get rangesMap =>
      throw _privateConstructorUsedError;

  /// Create a copy of SupplyHeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupplyHeightCopyWith<SupplyHeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplyHeightCopyWith<$Res> {
  factory $SupplyHeightCopyWith(
          SupplyHeight value, $Res Function(SupplyHeight) then) =
      _$SupplyHeightCopyWithImpl<$Res, SupplyHeight>;
  @useResult
  $Res call(
      {HeightUnit defaultHeightUnit, MapVO<HeightUnit, List<Range>> rangesMap});
}

/// @nodoc
class _$SupplyHeightCopyWithImpl<$Res, $Val extends SupplyHeight>
    implements $SupplyHeightCopyWith<$Res> {
  _$SupplyHeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupplyHeight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultHeightUnit = null,
    Object? rangesMap = null,
  }) {
    return _then(_value.copyWith(
      defaultHeightUnit: null == defaultHeightUnit
          ? _value.defaultHeightUnit
          : defaultHeightUnit // ignore: cast_nullable_to_non_nullable
              as HeightUnit,
      rangesMap: null == rangesMap
          ? _value.rangesMap
          : rangesMap // ignore: cast_nullable_to_non_nullable
              as MapVO<HeightUnit, List<Range>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplyHeightImplCopyWith<$Res>
    implements $SupplyHeightCopyWith<$Res> {
  factory _$$SupplyHeightImplCopyWith(
          _$SupplyHeightImpl value, $Res Function(_$SupplyHeightImpl) then) =
      __$$SupplyHeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HeightUnit defaultHeightUnit, MapVO<HeightUnit, List<Range>> rangesMap});
}

/// @nodoc
class __$$SupplyHeightImplCopyWithImpl<$Res>
    extends _$SupplyHeightCopyWithImpl<$Res, _$SupplyHeightImpl>
    implements _$$SupplyHeightImplCopyWith<$Res> {
  __$$SupplyHeightImplCopyWithImpl(
      _$SupplyHeightImpl _value, $Res Function(_$SupplyHeightImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplyHeight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultHeightUnit = null,
    Object? rangesMap = null,
  }) {
    return _then(_$SupplyHeightImpl(
      defaultHeightUnit: null == defaultHeightUnit
          ? _value.defaultHeightUnit
          : defaultHeightUnit // ignore: cast_nullable_to_non_nullable
              as HeightUnit,
      rangesMap: null == rangesMap
          ? _value.rangesMap
          : rangesMap // ignore: cast_nullable_to_non_nullable
              as MapVO<HeightUnit, List<Range>>,
    ));
  }
}

/// @nodoc

class _$SupplyHeightImpl extends _SupplyHeight {
  const _$SupplyHeightImpl(
      {required this.defaultHeightUnit, required this.rangesMap})
      : super._();

  @override
  final HeightUnit defaultHeightUnit;
  @override
  final MapVO<HeightUnit, List<Range>> rangesMap;

  @override
  String toString() {
    return 'SupplyHeight(defaultHeightUnit: $defaultHeightUnit, rangesMap: $rangesMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplyHeightImpl &&
            (identical(other.defaultHeightUnit, defaultHeightUnit) ||
                other.defaultHeightUnit == defaultHeightUnit) &&
            (identical(other.rangesMap, rangesMap) ||
                other.rangesMap == rangesMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, defaultHeightUnit, rangesMap);

  /// Create a copy of SupplyHeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplyHeightImplCopyWith<_$SupplyHeightImpl> get copyWith =>
      __$$SupplyHeightImplCopyWithImpl<_$SupplyHeightImpl>(this, _$identity);
}

abstract class _SupplyHeight extends SupplyHeight {
  const factory _SupplyHeight(
          {required final HeightUnit defaultHeightUnit,
          required final MapVO<HeightUnit, List<Range>> rangesMap}) =
      _$SupplyHeightImpl;
  const _SupplyHeight._() : super._();

  @override
  HeightUnit get defaultHeightUnit;
  @override
  MapVO<HeightUnit, List<Range>> get rangesMap;

  /// Create a copy of SupplyHeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupplyHeightImplCopyWith<_$SupplyHeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

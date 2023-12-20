// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supply_weight.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupplyWeight {
  WeightUnit get defaultWeightUnit => throw _privateConstructorUsedError;
  MapVO<WeightUnit, List<Range>> get rangesMap =>
      throw _privateConstructorUsedError;

  /// Create a copy of SupplyWeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupplyWeightCopyWith<SupplyWeight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplyWeightCopyWith<$Res> {
  factory $SupplyWeightCopyWith(
          SupplyWeight value, $Res Function(SupplyWeight) then) =
      _$SupplyWeightCopyWithImpl<$Res, SupplyWeight>;
  @useResult
  $Res call(
      {WeightUnit defaultWeightUnit, MapVO<WeightUnit, List<Range>> rangesMap});
}

/// @nodoc
class _$SupplyWeightCopyWithImpl<$Res, $Val extends SupplyWeight>
    implements $SupplyWeightCopyWith<$Res> {
  _$SupplyWeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupplyWeight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultWeightUnit = null,
    Object? rangesMap = null,
  }) {
    return _then(_value.copyWith(
      defaultWeightUnit: null == defaultWeightUnit
          ? _value.defaultWeightUnit
          : defaultWeightUnit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
      rangesMap: null == rangesMap
          ? _value.rangesMap
          : rangesMap // ignore: cast_nullable_to_non_nullable
              as MapVO<WeightUnit, List<Range>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplyWeightImplCopyWith<$Res>
    implements $SupplyWeightCopyWith<$Res> {
  factory _$$SupplyWeightImplCopyWith(
          _$SupplyWeightImpl value, $Res Function(_$SupplyWeightImpl) then) =
      __$$SupplyWeightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WeightUnit defaultWeightUnit, MapVO<WeightUnit, List<Range>> rangesMap});
}

/// @nodoc
class __$$SupplyWeightImplCopyWithImpl<$Res>
    extends _$SupplyWeightCopyWithImpl<$Res, _$SupplyWeightImpl>
    implements _$$SupplyWeightImplCopyWith<$Res> {
  __$$SupplyWeightImplCopyWithImpl(
      _$SupplyWeightImpl _value, $Res Function(_$SupplyWeightImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplyWeight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultWeightUnit = null,
    Object? rangesMap = null,
  }) {
    return _then(_$SupplyWeightImpl(
      defaultWeightUnit: null == defaultWeightUnit
          ? _value.defaultWeightUnit
          : defaultWeightUnit // ignore: cast_nullable_to_non_nullable
              as WeightUnit,
      rangesMap: null == rangesMap
          ? _value.rangesMap
          : rangesMap // ignore: cast_nullable_to_non_nullable
              as MapVO<WeightUnit, List<Range>>,
    ));
  }
}

/// @nodoc

class _$SupplyWeightImpl extends _SupplyWeight {
  const _$SupplyWeightImpl(
      {required this.defaultWeightUnit, required this.rangesMap})
      : super._();

  @override
  final WeightUnit defaultWeightUnit;
  @override
  final MapVO<WeightUnit, List<Range>> rangesMap;

  @override
  String toString() {
    return 'SupplyWeight(defaultWeightUnit: $defaultWeightUnit, rangesMap: $rangesMap)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplyWeightImpl &&
            (identical(other.defaultWeightUnit, defaultWeightUnit) ||
                other.defaultWeightUnit == defaultWeightUnit) &&
            (identical(other.rangesMap, rangesMap) ||
                other.rangesMap == rangesMap));
  }

  @override
  int get hashCode => Object.hash(runtimeType, defaultWeightUnit, rangesMap);

  /// Create a copy of SupplyWeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplyWeightImplCopyWith<_$SupplyWeightImpl> get copyWith =>
      __$$SupplyWeightImplCopyWithImpl<_$SupplyWeightImpl>(this, _$identity);
}

abstract class _SupplyWeight extends SupplyWeight {
  const factory _SupplyWeight(
          {required final WeightUnit defaultWeightUnit,
          required final MapVO<WeightUnit, List<Range>> rangesMap}) =
      _$SupplyWeightImpl;
  const _SupplyWeight._() : super._();

  @override
  WeightUnit get defaultWeightUnit;
  @override
  MapVO<WeightUnit, List<Range>> get rangesMap;

  /// Create a copy of SupplyWeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupplyWeightImplCopyWith<_$SupplyWeightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supply_foot_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupplyFootSize {
  FootSizeUnit get defaultFootSizeUnit => throw _privateConstructorUsedError;
  MapVO<FootSizeUnit, List<BodySpecValue>> get supplyFootSizeMap =>
      throw _privateConstructorUsedError;
  ListVO<FootShape> get supplyFootShapes => throw _privateConstructorUsedError;
  FootShape get defaultFootShape => throw _privateConstructorUsedError;

  /// Create a copy of SupplyFootSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SupplyFootSizeCopyWith<SupplyFootSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplyFootSizeCopyWith<$Res> {
  factory $SupplyFootSizeCopyWith(
          SupplyFootSize value, $Res Function(SupplyFootSize) then) =
      _$SupplyFootSizeCopyWithImpl<$Res, SupplyFootSize>;
  @useResult
  $Res call(
      {FootSizeUnit defaultFootSizeUnit,
      MapVO<FootSizeUnit, List<BodySpecValue>> supplyFootSizeMap,
      ListVO<FootShape> supplyFootShapes,
      FootShape defaultFootShape});
}

/// @nodoc
class _$SupplyFootSizeCopyWithImpl<$Res, $Val extends SupplyFootSize>
    implements $SupplyFootSizeCopyWith<$Res> {
  _$SupplyFootSizeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupplyFootSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultFootSizeUnit = null,
    Object? supplyFootSizeMap = null,
    Object? supplyFootShapes = null,
    Object? defaultFootShape = null,
  }) {
    return _then(_value.copyWith(
      defaultFootSizeUnit: null == defaultFootSizeUnit
          ? _value.defaultFootSizeUnit
          : defaultFootSizeUnit // ignore: cast_nullable_to_non_nullable
              as FootSizeUnit,
      supplyFootSizeMap: null == supplyFootSizeMap
          ? _value.supplyFootSizeMap
          : supplyFootSizeMap // ignore: cast_nullable_to_non_nullable
              as MapVO<FootSizeUnit, List<BodySpecValue>>,
      supplyFootShapes: null == supplyFootShapes
          ? _value.supplyFootShapes
          : supplyFootShapes // ignore: cast_nullable_to_non_nullable
              as ListVO<FootShape>,
      defaultFootShape: null == defaultFootShape
          ? _value.defaultFootShape
          : defaultFootShape // ignore: cast_nullable_to_non_nullable
              as FootShape,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SupplyFootSizeImplCopyWith<$Res>
    implements $SupplyFootSizeCopyWith<$Res> {
  factory _$$SupplyFootSizeImplCopyWith(_$SupplyFootSizeImpl value,
          $Res Function(_$SupplyFootSizeImpl) then) =
      __$$SupplyFootSizeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FootSizeUnit defaultFootSizeUnit,
      MapVO<FootSizeUnit, List<BodySpecValue>> supplyFootSizeMap,
      ListVO<FootShape> supplyFootShapes,
      FootShape defaultFootShape});
}

/// @nodoc
class __$$SupplyFootSizeImplCopyWithImpl<$Res>
    extends _$SupplyFootSizeCopyWithImpl<$Res, _$SupplyFootSizeImpl>
    implements _$$SupplyFootSizeImplCopyWith<$Res> {
  __$$SupplyFootSizeImplCopyWithImpl(
      _$SupplyFootSizeImpl _value, $Res Function(_$SupplyFootSizeImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplyFootSize
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? defaultFootSizeUnit = null,
    Object? supplyFootSizeMap = null,
    Object? supplyFootShapes = null,
    Object? defaultFootShape = null,
  }) {
    return _then(_$SupplyFootSizeImpl(
      defaultFootSizeUnit: null == defaultFootSizeUnit
          ? _value.defaultFootSizeUnit
          : defaultFootSizeUnit // ignore: cast_nullable_to_non_nullable
              as FootSizeUnit,
      supplyFootSizeMap: null == supplyFootSizeMap
          ? _value.supplyFootSizeMap
          : supplyFootSizeMap // ignore: cast_nullable_to_non_nullable
              as MapVO<FootSizeUnit, List<BodySpecValue>>,
      supplyFootShapes: null == supplyFootShapes
          ? _value.supplyFootShapes
          : supplyFootShapes // ignore: cast_nullable_to_non_nullable
              as ListVO<FootShape>,
      defaultFootShape: null == defaultFootShape
          ? _value.defaultFootShape
          : defaultFootShape // ignore: cast_nullable_to_non_nullable
              as FootShape,
    ));
  }
}

/// @nodoc

class _$SupplyFootSizeImpl extends _SupplyFootSize {
  const _$SupplyFootSizeImpl(
      {required this.defaultFootSizeUnit,
      required this.supplyFootSizeMap,
      required this.supplyFootShapes,
      required this.defaultFootShape})
      : super._();

  @override
  final FootSizeUnit defaultFootSizeUnit;
  @override
  final MapVO<FootSizeUnit, List<BodySpecValue>> supplyFootSizeMap;
  @override
  final ListVO<FootShape> supplyFootShapes;
  @override
  final FootShape defaultFootShape;

  @override
  String toString() {
    return 'SupplyFootSize(defaultFootSizeUnit: $defaultFootSizeUnit, supplyFootSizeMap: $supplyFootSizeMap, supplyFootShapes: $supplyFootShapes, defaultFootShape: $defaultFootShape)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupplyFootSizeImpl &&
            (identical(other.defaultFootSizeUnit, defaultFootSizeUnit) ||
                other.defaultFootSizeUnit == defaultFootSizeUnit) &&
            (identical(other.supplyFootSizeMap, supplyFootSizeMap) ||
                other.supplyFootSizeMap == supplyFootSizeMap) &&
            (identical(other.supplyFootShapes, supplyFootShapes) ||
                other.supplyFootShapes == supplyFootShapes) &&
            (identical(other.defaultFootShape, defaultFootShape) ||
                other.defaultFootShape == defaultFootShape));
  }

  @override
  int get hashCode => Object.hash(runtimeType, defaultFootSizeUnit,
      supplyFootSizeMap, supplyFootShapes, defaultFootShape);

  /// Create a copy of SupplyFootSize
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SupplyFootSizeImplCopyWith<_$SupplyFootSizeImpl> get copyWith =>
      __$$SupplyFootSizeImplCopyWithImpl<_$SupplyFootSizeImpl>(
          this, _$identity);
}

abstract class _SupplyFootSize extends SupplyFootSize {
  const factory _SupplyFootSize(
      {required final FootSizeUnit defaultFootSizeUnit,
      required final MapVO<FootSizeUnit, List<BodySpecValue>> supplyFootSizeMap,
      required final ListVO<FootShape> supplyFootShapes,
      required final FootShape defaultFootShape}) = _$SupplyFootSizeImpl;
  const _SupplyFootSize._() : super._();

  @override
  FootSizeUnit get defaultFootSizeUnit;
  @override
  MapVO<FootSizeUnit, List<BodySpecValue>> get supplyFootSizeMap;
  @override
  ListVO<FootShape> get supplyFootShapes;
  @override
  FootShape get defaultFootShape;

  /// Create a copy of SupplyFootSize
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SupplyFootSizeImplCopyWith<_$SupplyFootSizeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

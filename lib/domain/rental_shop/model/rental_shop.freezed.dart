// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_shop.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalShop {
  DoubleVO get id => throw _privateConstructorUsedError;
  StringVO get name => throw _privateConstructorUsedError;
  ListVO<ActivityCenter> get activityCenters =>
      throw _privateConstructorUsedError;
  RentalShopOperationInfo get operationInfo =>
      throw _privateConstructorUsedError;
  ListVO<BankAccount> get bankAccounts => throw _privateConstructorUsedError;
  ListVO<ContentMedia> get contentMedias => throw _privateConstructorUsedError;
  ListVO<RentalShopProduct> get mainEquipmentProducts =>
      throw _privateConstructorUsedError;
  ListVO<RentalShopProduct> get apparelEquipmentProducts =>
      throw _privateConstructorUsedError;
  ListVO<RentalShopProduct> get accessoryEquipmentProducts =>
      throw _privateConstructorUsedError;
  RentalShopBodySpec get supplyBodySpec => throw _privateConstructorUsedError;
  RentalShopProduct? get recommendProduct => throw _privateConstructorUsedError;
  RentalShopProduct? get lessonProducts => throw _privateConstructorUsedError;

  /// Create a copy of RentalShop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalShopCopyWith<RentalShop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalShopCopyWith<$Res> {
  factory $RentalShopCopyWith(
          RentalShop value, $Res Function(RentalShop) then) =
      _$RentalShopCopyWithImpl<$Res, RentalShop>;
  @useResult
  $Res call(
      {DoubleVO id,
      StringVO name,
      ListVO<ActivityCenter> activityCenters,
      RentalShopOperationInfo operationInfo,
      ListVO<BankAccount> bankAccounts,
      ListVO<ContentMedia> contentMedias,
      ListVO<RentalShopProduct> mainEquipmentProducts,
      ListVO<RentalShopProduct> apparelEquipmentProducts,
      ListVO<RentalShopProduct> accessoryEquipmentProducts,
      RentalShopBodySpec supplyBodySpec,
      RentalShopProduct? recommendProduct,
      RentalShopProduct? lessonProducts});

  $RentalShopOperationInfoCopyWith<$Res> get operationInfo;
  $RentalShopBodySpecCopyWith<$Res> get supplyBodySpec;
  $RentalShopProductCopyWith<$Res>? get recommendProduct;
  $RentalShopProductCopyWith<$Res>? get lessonProducts;
}

/// @nodoc
class _$RentalShopCopyWithImpl<$Res, $Val extends RentalShop>
    implements $RentalShopCopyWith<$Res> {
  _$RentalShopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalShop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? activityCenters = null,
    Object? operationInfo = null,
    Object? bankAccounts = null,
    Object? contentMedias = null,
    Object? mainEquipmentProducts = null,
    Object? apparelEquipmentProducts = null,
    Object? accessoryEquipmentProducts = null,
    Object? supplyBodySpec = null,
    Object? recommendProduct = freezed,
    Object? lessonProducts = freezed,
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
      activityCenters: null == activityCenters
          ? _value.activityCenters
          : activityCenters // ignore: cast_nullable_to_non_nullable
              as ListVO<ActivityCenter>,
      operationInfo: null == operationInfo
          ? _value.operationInfo
          : operationInfo // ignore: cast_nullable_to_non_nullable
              as RentalShopOperationInfo,
      bankAccounts: null == bankAccounts
          ? _value.bankAccounts
          : bankAccounts // ignore: cast_nullable_to_non_nullable
              as ListVO<BankAccount>,
      contentMedias: null == contentMedias
          ? _value.contentMedias
          : contentMedias // ignore: cast_nullable_to_non_nullable
              as ListVO<ContentMedia>,
      mainEquipmentProducts: null == mainEquipmentProducts
          ? _value.mainEquipmentProducts
          : mainEquipmentProducts // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProduct>,
      apparelEquipmentProducts: null == apparelEquipmentProducts
          ? _value.apparelEquipmentProducts
          : apparelEquipmentProducts // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProduct>,
      accessoryEquipmentProducts: null == accessoryEquipmentProducts
          ? _value.accessoryEquipmentProducts
          : accessoryEquipmentProducts // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProduct>,
      supplyBodySpec: null == supplyBodySpec
          ? _value.supplyBodySpec
          : supplyBodySpec // ignore: cast_nullable_to_non_nullable
              as RentalShopBodySpec,
      recommendProduct: freezed == recommendProduct
          ? _value.recommendProduct
          : recommendProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct?,
      lessonProducts: freezed == lessonProducts
          ? _value.lessonProducts
          : lessonProducts // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct?,
    ) as $Val);
  }

  /// Create a copy of RentalShop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopOperationInfoCopyWith<$Res> get operationInfo {
    return $RentalShopOperationInfoCopyWith<$Res>(_value.operationInfo,
        (value) {
      return _then(_value.copyWith(operationInfo: value) as $Val);
    });
  }

  /// Create a copy of RentalShop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopBodySpecCopyWith<$Res> get supplyBodySpec {
    return $RentalShopBodySpecCopyWith<$Res>(_value.supplyBodySpec, (value) {
      return _then(_value.copyWith(supplyBodySpec: value) as $Val);
    });
  }

  /// Create a copy of RentalShop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopProductCopyWith<$Res>? get recommendProduct {
    if (_value.recommendProduct == null) {
      return null;
    }

    return $RentalShopProductCopyWith<$Res>(_value.recommendProduct!, (value) {
      return _then(_value.copyWith(recommendProduct: value) as $Val);
    });
  }

  /// Create a copy of RentalShop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopProductCopyWith<$Res>? get lessonProducts {
    if (_value.lessonProducts == null) {
      return null;
    }

    return $RentalShopProductCopyWith<$Res>(_value.lessonProducts!, (value) {
      return _then(_value.copyWith(lessonProducts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RentalShopImplCopyWith<$Res>
    implements $RentalShopCopyWith<$Res> {
  factory _$$RentalShopImplCopyWith(
          _$RentalShopImpl value, $Res Function(_$RentalShopImpl) then) =
      __$$RentalShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DoubleVO id,
      StringVO name,
      ListVO<ActivityCenter> activityCenters,
      RentalShopOperationInfo operationInfo,
      ListVO<BankAccount> bankAccounts,
      ListVO<ContentMedia> contentMedias,
      ListVO<RentalShopProduct> mainEquipmentProducts,
      ListVO<RentalShopProduct> apparelEquipmentProducts,
      ListVO<RentalShopProduct> accessoryEquipmentProducts,
      RentalShopBodySpec supplyBodySpec,
      RentalShopProduct? recommendProduct,
      RentalShopProduct? lessonProducts});

  @override
  $RentalShopOperationInfoCopyWith<$Res> get operationInfo;
  @override
  $RentalShopBodySpecCopyWith<$Res> get supplyBodySpec;
  @override
  $RentalShopProductCopyWith<$Res>? get recommendProduct;
  @override
  $RentalShopProductCopyWith<$Res>? get lessonProducts;
}

/// @nodoc
class __$$RentalShopImplCopyWithImpl<$Res>
    extends _$RentalShopCopyWithImpl<$Res, _$RentalShopImpl>
    implements _$$RentalShopImplCopyWith<$Res> {
  __$$RentalShopImplCopyWithImpl(
      _$RentalShopImpl _value, $Res Function(_$RentalShopImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalShop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? activityCenters = null,
    Object? operationInfo = null,
    Object? bankAccounts = null,
    Object? contentMedias = null,
    Object? mainEquipmentProducts = null,
    Object? apparelEquipmentProducts = null,
    Object? accessoryEquipmentProducts = null,
    Object? supplyBodySpec = null,
    Object? recommendProduct = freezed,
    Object? lessonProducts = freezed,
  }) {
    return _then(_$RentalShopImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
      activityCenters: null == activityCenters
          ? _value.activityCenters
          : activityCenters // ignore: cast_nullable_to_non_nullable
              as ListVO<ActivityCenter>,
      operationInfo: null == operationInfo
          ? _value.operationInfo
          : operationInfo // ignore: cast_nullable_to_non_nullable
              as RentalShopOperationInfo,
      bankAccounts: null == bankAccounts
          ? _value.bankAccounts
          : bankAccounts // ignore: cast_nullable_to_non_nullable
              as ListVO<BankAccount>,
      contentMedias: null == contentMedias
          ? _value.contentMedias
          : contentMedias // ignore: cast_nullable_to_non_nullable
              as ListVO<ContentMedia>,
      mainEquipmentProducts: null == mainEquipmentProducts
          ? _value.mainEquipmentProducts
          : mainEquipmentProducts // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProduct>,
      apparelEquipmentProducts: null == apparelEquipmentProducts
          ? _value.apparelEquipmentProducts
          : apparelEquipmentProducts // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProduct>,
      accessoryEquipmentProducts: null == accessoryEquipmentProducts
          ? _value.accessoryEquipmentProducts
          : accessoryEquipmentProducts // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProduct>,
      supplyBodySpec: null == supplyBodySpec
          ? _value.supplyBodySpec
          : supplyBodySpec // ignore: cast_nullable_to_non_nullable
              as RentalShopBodySpec,
      recommendProduct: freezed == recommendProduct
          ? _value.recommendProduct
          : recommendProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct?,
      lessonProducts: freezed == lessonProducts
          ? _value.lessonProducts
          : lessonProducts // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct?,
    ));
  }
}

/// @nodoc

class _$RentalShopImpl extends _RentalShop {
  const _$RentalShopImpl(
      {required this.id,
      required this.name,
      required this.activityCenters,
      required this.operationInfo,
      required this.bankAccounts,
      required this.contentMedias,
      required this.mainEquipmentProducts,
      required this.apparelEquipmentProducts,
      required this.accessoryEquipmentProducts,
      required this.supplyBodySpec,
      this.recommendProduct,
      this.lessonProducts})
      : super._();

  @override
  final DoubleVO id;
  @override
  final StringVO name;
  @override
  final ListVO<ActivityCenter> activityCenters;
  @override
  final RentalShopOperationInfo operationInfo;
  @override
  final ListVO<BankAccount> bankAccounts;
  @override
  final ListVO<ContentMedia> contentMedias;
  @override
  final ListVO<RentalShopProduct> mainEquipmentProducts;
  @override
  final ListVO<RentalShopProduct> apparelEquipmentProducts;
  @override
  final ListVO<RentalShopProduct> accessoryEquipmentProducts;
  @override
  final RentalShopBodySpec supplyBodySpec;
  @override
  final RentalShopProduct? recommendProduct;
  @override
  final RentalShopProduct? lessonProducts;

  @override
  String toString() {
    return 'RentalShop(id: $id, name: $name, activityCenters: $activityCenters, operationInfo: $operationInfo, bankAccounts: $bankAccounts, contentMedias: $contentMedias, mainEquipmentProducts: $mainEquipmentProducts, apparelEquipmentProducts: $apparelEquipmentProducts, accessoryEquipmentProducts: $accessoryEquipmentProducts, supplyBodySpec: $supplyBodySpec, recommendProduct: $recommendProduct, lessonProducts: $lessonProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalShopImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.activityCenters, activityCenters) ||
                other.activityCenters == activityCenters) &&
            (identical(other.operationInfo, operationInfo) ||
                other.operationInfo == operationInfo) &&
            (identical(other.bankAccounts, bankAccounts) ||
                other.bankAccounts == bankAccounts) &&
            (identical(other.contentMedias, contentMedias) ||
                other.contentMedias == contentMedias) &&
            (identical(other.mainEquipmentProducts, mainEquipmentProducts) ||
                other.mainEquipmentProducts == mainEquipmentProducts) &&
            (identical(
                    other.apparelEquipmentProducts, apparelEquipmentProducts) ||
                other.apparelEquipmentProducts == apparelEquipmentProducts) &&
            (identical(other.accessoryEquipmentProducts,
                    accessoryEquipmentProducts) ||
                other.accessoryEquipmentProducts ==
                    accessoryEquipmentProducts) &&
            (identical(other.supplyBodySpec, supplyBodySpec) ||
                other.supplyBodySpec == supplyBodySpec) &&
            (identical(other.recommendProduct, recommendProduct) ||
                other.recommendProduct == recommendProduct) &&
            (identical(other.lessonProducts, lessonProducts) ||
                other.lessonProducts == lessonProducts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      activityCenters,
      operationInfo,
      bankAccounts,
      contentMedias,
      mainEquipmentProducts,
      apparelEquipmentProducts,
      accessoryEquipmentProducts,
      supplyBodySpec,
      recommendProduct,
      lessonProducts);

  /// Create a copy of RentalShop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalShopImplCopyWith<_$RentalShopImpl> get copyWith =>
      __$$RentalShopImplCopyWithImpl<_$RentalShopImpl>(this, _$identity);
}

abstract class _RentalShop extends RentalShop {
  const factory _RentalShop(
      {required final DoubleVO id,
      required final StringVO name,
      required final ListVO<ActivityCenter> activityCenters,
      required final RentalShopOperationInfo operationInfo,
      required final ListVO<BankAccount> bankAccounts,
      required final ListVO<ContentMedia> contentMedias,
      required final ListVO<RentalShopProduct> mainEquipmentProducts,
      required final ListVO<RentalShopProduct> apparelEquipmentProducts,
      required final ListVO<RentalShopProduct> accessoryEquipmentProducts,
      required final RentalShopBodySpec supplyBodySpec,
      final RentalShopProduct? recommendProduct,
      final RentalShopProduct? lessonProducts}) = _$RentalShopImpl;
  const _RentalShop._() : super._();

  @override
  DoubleVO get id;
  @override
  StringVO get name;
  @override
  ListVO<ActivityCenter> get activityCenters;
  @override
  RentalShopOperationInfo get operationInfo;
  @override
  ListVO<BankAccount> get bankAccounts;
  @override
  ListVO<ContentMedia> get contentMedias;
  @override
  ListVO<RentalShopProduct> get mainEquipmentProducts;
  @override
  ListVO<RentalShopProduct> get apparelEquipmentProducts;
  @override
  ListVO<RentalShopProduct> get accessoryEquipmentProducts;
  @override
  RentalShopBodySpec get supplyBodySpec;
  @override
  RentalShopProduct? get recommendProduct;
  @override
  RentalShopProduct? get lessonProducts;

  /// Create a copy of RentalShop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalShopImplCopyWith<_$RentalShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

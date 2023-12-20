// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Cart {
  DoubleVO get id => throw _privateConstructorUsedError;
  ActivityCenter? get activityCenter => throw _privateConstructorUsedError;
  List<Rental>? get rentals => throw _privateConstructorUsedError;
  RentalShopProduct? get recommendProduct => throw _privateConstructorUsedError;
  RentalShopProduct? get lessonProduct => throw _privateConstructorUsedError;
  String? get memo => throw _privateConstructorUsedError;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {DoubleVO id,
      ActivityCenter? activityCenter,
      List<Rental>? rentals,
      RentalShopProduct? recommendProduct,
      RentalShopProduct? lessonProduct,
      String? memo});

  $ActivityCenterCopyWith<$Res>? get activityCenter;
  $RentalShopProductCopyWith<$Res>? get recommendProduct;
  $RentalShopProductCopyWith<$Res>? get lessonProduct;
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activityCenter = freezed,
    Object? rentals = freezed,
    Object? recommendProduct = freezed,
    Object? lessonProduct = freezed,
    Object? memo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      activityCenter: freezed == activityCenter
          ? _value.activityCenter
          : activityCenter // ignore: cast_nullable_to_non_nullable
              as ActivityCenter?,
      rentals: freezed == rentals
          ? _value.rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<Rental>?,
      recommendProduct: freezed == recommendProduct
          ? _value.recommendProduct
          : recommendProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct?,
      lessonProduct: freezed == lessonProduct
          ? _value.lessonProduct
          : lessonProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ActivityCenterCopyWith<$Res>? get activityCenter {
    if (_value.activityCenter == null) {
      return null;
    }

    return $ActivityCenterCopyWith<$Res>(_value.activityCenter!, (value) {
      return _then(_value.copyWith(activityCenter: value) as $Val);
    });
  }

  /// Create a copy of Cart
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

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopProductCopyWith<$Res>? get lessonProduct {
    if (_value.lessonProduct == null) {
      return null;
    }

    return $RentalShopProductCopyWith<$Res>(_value.lessonProduct!, (value) {
      return _then(_value.copyWith(lessonProduct: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
          _$CartImpl value, $Res Function(_$CartImpl) then) =
      __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DoubleVO id,
      ActivityCenter? activityCenter,
      List<Rental>? rentals,
      RentalShopProduct? recommendProduct,
      RentalShopProduct? lessonProduct,
      String? memo});

  @override
  $ActivityCenterCopyWith<$Res>? get activityCenter;
  @override
  $RentalShopProductCopyWith<$Res>? get recommendProduct;
  @override
  $RentalShopProductCopyWith<$Res>? get lessonProduct;
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? activityCenter = freezed,
    Object? rentals = freezed,
    Object? recommendProduct = freezed,
    Object? lessonProduct = freezed,
    Object? memo = freezed,
  }) {
    return _then(_$CartImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      activityCenter: freezed == activityCenter
          ? _value.activityCenter
          : activityCenter // ignore: cast_nullable_to_non_nullable
              as ActivityCenter?,
      rentals: freezed == rentals
          ? _value._rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<Rental>?,
      recommendProduct: freezed == recommendProduct
          ? _value.recommendProduct
          : recommendProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct?,
      lessonProduct: freezed == lessonProduct
          ? _value.lessonProduct
          : lessonProduct // ignore: cast_nullable_to_non_nullable
              as RentalShopProduct?,
      memo: freezed == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CartImpl extends _Cart {
  const _$CartImpl(
      {required this.id,
      required this.activityCenter,
      required final List<Rental>? rentals,
      required this.recommendProduct,
      required this.lessonProduct,
      required this.memo})
      : _rentals = rentals,
        super._();

  @override
  final DoubleVO id;
  @override
  final ActivityCenter? activityCenter;
  final List<Rental>? _rentals;
  @override
  List<Rental>? get rentals {
    final value = _rentals;
    if (value == null) return null;
    if (_rentals is EqualUnmodifiableListView) return _rentals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RentalShopProduct? recommendProduct;
  @override
  final RentalShopProduct? lessonProduct;
  @override
  final String? memo;

  @override
  String toString() {
    return 'Cart(id: $id, activityCenter: $activityCenter, rentals: $rentals, recommendProduct: $recommendProduct, lessonProduct: $lessonProduct, memo: $memo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.activityCenter, activityCenter) ||
                other.activityCenter == activityCenter) &&
            const DeepCollectionEquality().equals(other._rentals, _rentals) &&
            (identical(other.recommendProduct, recommendProduct) ||
                other.recommendProduct == recommendProduct) &&
            (identical(other.lessonProduct, lessonProduct) ||
                other.lessonProduct == lessonProduct) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      activityCenter,
      const DeepCollectionEquality().hash(_rentals),
      recommendProduct,
      lessonProduct,
      memo);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);
}

abstract class _Cart extends Cart {
  const factory _Cart(
      {required final DoubleVO id,
      required final ActivityCenter? activityCenter,
      required final List<Rental>? rentals,
      required final RentalShopProduct? recommendProduct,
      required final RentalShopProduct? lessonProduct,
      required final String? memo}) = _$CartImpl;
  const _Cart._() : super._();

  @override
  DoubleVO get id;
  @override
  ActivityCenter? get activityCenter;
  @override
  List<Rental>? get rentals;
  @override
  RentalShopProduct? get recommendProduct;
  @override
  RentalShopProduct? get lessonProduct;
  @override
  String? get memo;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

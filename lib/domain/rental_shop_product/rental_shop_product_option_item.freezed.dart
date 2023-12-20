// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_shop_product_option_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalShopProductOptionItem {
  DoubleVO get id => throw _privateConstructorUsedError;
  ContentMedia? get media => throw _privateConstructorUsedError;
  StringVO get title => throw _privateConstructorUsedError;
  StringVO get description => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  BooleanVO? get recommend => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  bool? get isValid => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of RentalShopProductOptionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalShopProductOptionItemCopyWith<RentalShopProductOptionItem>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalShopProductOptionItemCopyWith<$Res> {
  factory $RentalShopProductOptionItemCopyWith(
          RentalShopProductOptionItem value,
          $Res Function(RentalShopProductOptionItem) then) =
      _$RentalShopProductOptionItemCopyWithImpl<$Res,
          RentalShopProductOptionItem>;
  @useResult
  $Res call(
      {DoubleVO id,
      ContentMedia? media,
      StringVO title,
      StringVO description,
      Price price,
      BooleanVO? recommend,
      int? quantity,
      bool? isValid,
      bool? isSelected});

  $ContentMediaCopyWith<$Res>? get media;
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$RentalShopProductOptionItemCopyWithImpl<$Res,
        $Val extends RentalShopProductOptionItem>
    implements $RentalShopProductOptionItemCopyWith<$Res> {
  _$RentalShopProductOptionItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalShopProductOptionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? media = freezed,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? recommend = freezed,
    Object? quantity = freezed,
    Object? isValid = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as ContentMedia?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringVO,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      recommend: freezed == recommend
          ? _value.recommend
          : recommend // ignore: cast_nullable_to_non_nullable
              as BooleanVO?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of RentalShopProductOptionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentMediaCopyWith<$Res>? get media {
    if (_value.media == null) {
      return null;
    }

    return $ContentMediaCopyWith<$Res>(_value.media!, (value) {
      return _then(_value.copyWith(media: value) as $Val);
    });
  }

  /// Create a copy of RentalShopProductOptionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PriceCopyWith<$Res> get price {
    return $PriceCopyWith<$Res>(_value.price, (value) {
      return _then(_value.copyWith(price: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RentalShopProductOptionItemImplCopyWith<$Res>
    implements $RentalShopProductOptionItemCopyWith<$Res> {
  factory _$$RentalShopProductOptionItemImplCopyWith(
          _$RentalShopProductOptionItemImpl value,
          $Res Function(_$RentalShopProductOptionItemImpl) then) =
      __$$RentalShopProductOptionItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DoubleVO id,
      ContentMedia? media,
      StringVO title,
      StringVO description,
      Price price,
      BooleanVO? recommend,
      int? quantity,
      bool? isValid,
      bool? isSelected});

  @override
  $ContentMediaCopyWith<$Res>? get media;
  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$RentalShopProductOptionItemImplCopyWithImpl<$Res>
    extends _$RentalShopProductOptionItemCopyWithImpl<$Res,
        _$RentalShopProductOptionItemImpl>
    implements _$$RentalShopProductOptionItemImplCopyWith<$Res> {
  __$$RentalShopProductOptionItemImplCopyWithImpl(
      _$RentalShopProductOptionItemImpl _value,
      $Res Function(_$RentalShopProductOptionItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalShopProductOptionItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? media = freezed,
    Object? title = null,
    Object? description = null,
    Object? price = null,
    Object? recommend = freezed,
    Object? quantity = freezed,
    Object? isValid = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_$RentalShopProductOptionItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as ContentMedia?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringVO,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      recommend: freezed == recommend
          ? _value.recommend
          : recommend // ignore: cast_nullable_to_non_nullable
              as BooleanVO?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      isValid: freezed == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$RentalShopProductOptionItemImpl extends _RentalShopProductOptionItem {
  const _$RentalShopProductOptionItemImpl(
      {required this.id,
      required this.media,
      required this.title,
      required this.description,
      required this.price,
      this.recommend,
      this.quantity,
      this.isValid,
      this.isSelected})
      : super._();

  @override
  final DoubleVO id;
  @override
  final ContentMedia? media;
  @override
  final StringVO title;
  @override
  final StringVO description;
  @override
  final Price price;
  @override
  final BooleanVO? recommend;
  @override
  final int? quantity;
  @override
  final bool? isValid;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'RentalShopProductOptionItem(id: $id, media: $media, title: $title, description: $description, price: $price, recommend: $recommend, quantity: $quantity, isValid: $isValid, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalShopProductOptionItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.recommend, recommend) ||
                other.recommend == recommend) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, media, title, description,
      price, recommend, quantity, isValid, isSelected);

  /// Create a copy of RentalShopProductOptionItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalShopProductOptionItemImplCopyWith<_$RentalShopProductOptionItemImpl>
      get copyWith => __$$RentalShopProductOptionItemImplCopyWithImpl<
          _$RentalShopProductOptionItemImpl>(this, _$identity);
}

abstract class _RentalShopProductOptionItem
    extends RentalShopProductOptionItem {
  const factory _RentalShopProductOptionItem(
      {required final DoubleVO id,
      required final ContentMedia? media,
      required final StringVO title,
      required final StringVO description,
      required final Price price,
      final BooleanVO? recommend,
      final int? quantity,
      final bool? isValid,
      final bool? isSelected}) = _$RentalShopProductOptionItemImpl;
  const _RentalShopProductOptionItem._() : super._();

  @override
  DoubleVO get id;
  @override
  ContentMedia? get media;
  @override
  StringVO get title;
  @override
  StringVO get description;
  @override
  Price get price;
  @override
  BooleanVO? get recommend;
  @override
  int? get quantity;
  @override
  bool? get isValid;
  @override
  bool? get isSelected;

  /// Create a copy of RentalShopProductOptionItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalShopProductOptionItemImplCopyWith<_$RentalShopProductOptionItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}

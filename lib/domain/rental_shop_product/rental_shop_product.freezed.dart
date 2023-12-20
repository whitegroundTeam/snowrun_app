// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_shop_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalShopProduct {
  DoubleVO get id => throw _privateConstructorUsedError;
  RentalShopProductType get type => throw _privateConstructorUsedError;
  ContentMedia? get media => throw _privateConstructorUsedError;
  StringVO get title => throw _privateConstructorUsedError;
  StringVO get description => throw _privateConstructorUsedError;
  ListVO<RentalShopProductOption> get productOptions =>
      throw _privateConstructorUsedError;

  /// Create a copy of RentalShopProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalShopProductCopyWith<RentalShopProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalShopProductCopyWith<$Res> {
  factory $RentalShopProductCopyWith(
          RentalShopProduct value, $Res Function(RentalShopProduct) then) =
      _$RentalShopProductCopyWithImpl<$Res, RentalShopProduct>;
  @useResult
  $Res call(
      {DoubleVO id,
      RentalShopProductType type,
      ContentMedia? media,
      StringVO title,
      StringVO description,
      ListVO<RentalShopProductOption> productOptions});

  $ContentMediaCopyWith<$Res>? get media;
}

/// @nodoc
class _$RentalShopProductCopyWithImpl<$Res, $Val extends RentalShopProduct>
    implements $RentalShopProductCopyWith<$Res> {
  _$RentalShopProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalShopProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? media = freezed,
    Object? title = null,
    Object? description = null,
    Object? productOptions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RentalShopProductType,
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
      productOptions: null == productOptions
          ? _value.productOptions
          : productOptions // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProductOption>,
    ) as $Val);
  }

  /// Create a copy of RentalShopProduct
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
}

/// @nodoc
abstract class _$$RentalShopProductImplCopyWith<$Res>
    implements $RentalShopProductCopyWith<$Res> {
  factory _$$RentalShopProductImplCopyWith(_$RentalShopProductImpl value,
          $Res Function(_$RentalShopProductImpl) then) =
      __$$RentalShopProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DoubleVO id,
      RentalShopProductType type,
      ContentMedia? media,
      StringVO title,
      StringVO description,
      ListVO<RentalShopProductOption> productOptions});

  @override
  $ContentMediaCopyWith<$Res>? get media;
}

/// @nodoc
class __$$RentalShopProductImplCopyWithImpl<$Res>
    extends _$RentalShopProductCopyWithImpl<$Res, _$RentalShopProductImpl>
    implements _$$RentalShopProductImplCopyWith<$Res> {
  __$$RentalShopProductImplCopyWithImpl(_$RentalShopProductImpl _value,
      $Res Function(_$RentalShopProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalShopProduct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? media = freezed,
    Object? title = null,
    Object? description = null,
    Object? productOptions = null,
  }) {
    return _then(_$RentalShopProductImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as RentalShopProductType,
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
      productOptions: null == productOptions
          ? _value.productOptions
          : productOptions // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProductOption>,
    ));
  }
}

/// @nodoc

class _$RentalShopProductImpl extends _RentalShopProduct {
  const _$RentalShopProductImpl(
      {required this.id,
      required this.type,
      this.media,
      required this.title,
      required this.description,
      required this.productOptions})
      : super._();

  @override
  final DoubleVO id;
  @override
  final RentalShopProductType type;
  @override
  final ContentMedia? media;
  @override
  final StringVO title;
  @override
  final StringVO description;
  @override
  final ListVO<RentalShopProductOption> productOptions;

  @override
  String toString() {
    return 'RentalShopProduct(id: $id, type: $type, media: $media, title: $title, description: $description, productOptions: $productOptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalShopProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.productOptions, productOptions) ||
                other.productOptions == productOptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, type, media, title, description, productOptions);

  /// Create a copy of RentalShopProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalShopProductImplCopyWith<_$RentalShopProductImpl> get copyWith =>
      __$$RentalShopProductImplCopyWithImpl<_$RentalShopProductImpl>(
          this, _$identity);
}

abstract class _RentalShopProduct extends RentalShopProduct {
  const factory _RentalShopProduct(
          {required final DoubleVO id,
          required final RentalShopProductType type,
          final ContentMedia? media,
          required final StringVO title,
          required final StringVO description,
          required final ListVO<RentalShopProductOption> productOptions}) =
      _$RentalShopProductImpl;
  const _RentalShopProduct._() : super._();

  @override
  DoubleVO get id;
  @override
  RentalShopProductType get type;
  @override
  ContentMedia? get media;
  @override
  StringVO get title;
  @override
  StringVO get description;
  @override
  ListVO<RentalShopProductOption> get productOptions;

  /// Create a copy of RentalShopProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalShopProductImplCopyWith<_$RentalShopProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

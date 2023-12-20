// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_shop_product_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalShopProductOption {
  DoubleVO get id => throw _privateConstructorUsedError;
  StringVO get title => throw _privateConstructorUsedError;
  StringVO get description => throw _privateConstructorUsedError;
  BooleanVO get isRequired => throw _privateConstructorUsedError;
  ListVO<RentalShopProductOptionItem> get optionItems =>
      throw _privateConstructorUsedError;
  RentalShopProductOptionItem? get selectedOptionItem =>
      throw _privateConstructorUsedError;
  IntVO get minSelection => throw _privateConstructorUsedError;
  IntVO get maxSelection => throw _privateConstructorUsedError;

  /// Create a copy of RentalShopProductOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalShopProductOptionCopyWith<RentalShopProductOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalShopProductOptionCopyWith<$Res> {
  factory $RentalShopProductOptionCopyWith(RentalShopProductOption value,
          $Res Function(RentalShopProductOption) then) =
      _$RentalShopProductOptionCopyWithImpl<$Res, RentalShopProductOption>;
  @useResult
  $Res call(
      {DoubleVO id,
      StringVO title,
      StringVO description,
      BooleanVO isRequired,
      ListVO<RentalShopProductOptionItem> optionItems,
      RentalShopProductOptionItem? selectedOptionItem,
      IntVO minSelection,
      IntVO maxSelection});

  $RentalShopProductOptionItemCopyWith<$Res>? get selectedOptionItem;
}

/// @nodoc
class _$RentalShopProductOptionCopyWithImpl<$Res,
        $Val extends RentalShopProductOption>
    implements $RentalShopProductOptionCopyWith<$Res> {
  _$RentalShopProductOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalShopProductOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isRequired = null,
    Object? optionItems = null,
    Object? selectedOptionItem = freezed,
    Object? minSelection = null,
    Object? maxSelection = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringVO,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
      optionItems: null == optionItems
          ? _value.optionItems
          : optionItems // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProductOptionItem>,
      selectedOptionItem: freezed == selectedOptionItem
          ? _value.selectedOptionItem
          : selectedOptionItem // ignore: cast_nullable_to_non_nullable
              as RentalShopProductOptionItem?,
      minSelection: null == minSelection
          ? _value.minSelection
          : minSelection // ignore: cast_nullable_to_non_nullable
              as IntVO,
      maxSelection: null == maxSelection
          ? _value.maxSelection
          : maxSelection // ignore: cast_nullable_to_non_nullable
              as IntVO,
    ) as $Val);
  }

  /// Create a copy of RentalShopProductOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopProductOptionItemCopyWith<$Res>? get selectedOptionItem {
    if (_value.selectedOptionItem == null) {
      return null;
    }

    return $RentalShopProductOptionItemCopyWith<$Res>(
        _value.selectedOptionItem!, (value) {
      return _then(_value.copyWith(selectedOptionItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RentalShopProductOptionImplCopyWith<$Res>
    implements $RentalShopProductOptionCopyWith<$Res> {
  factory _$$RentalShopProductOptionImplCopyWith(
          _$RentalShopProductOptionImpl value,
          $Res Function(_$RentalShopProductOptionImpl) then) =
      __$$RentalShopProductOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DoubleVO id,
      StringVO title,
      StringVO description,
      BooleanVO isRequired,
      ListVO<RentalShopProductOptionItem> optionItems,
      RentalShopProductOptionItem? selectedOptionItem,
      IntVO minSelection,
      IntVO maxSelection});

  @override
  $RentalShopProductOptionItemCopyWith<$Res>? get selectedOptionItem;
}

/// @nodoc
class __$$RentalShopProductOptionImplCopyWithImpl<$Res>
    extends _$RentalShopProductOptionCopyWithImpl<$Res,
        _$RentalShopProductOptionImpl>
    implements _$$RentalShopProductOptionImplCopyWith<$Res> {
  __$$RentalShopProductOptionImplCopyWithImpl(
      _$RentalShopProductOptionImpl _value,
      $Res Function(_$RentalShopProductOptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalShopProductOption
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isRequired = null,
    Object? optionItems = null,
    Object? selectedOptionItem = freezed,
    Object? minSelection = null,
    Object? maxSelection = null,
  }) {
    return _then(_$RentalShopProductOptionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as StringVO,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as StringVO,
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
      optionItems: null == optionItems
          ? _value.optionItems
          : optionItems // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopProductOptionItem>,
      selectedOptionItem: freezed == selectedOptionItem
          ? _value.selectedOptionItem
          : selectedOptionItem // ignore: cast_nullable_to_non_nullable
              as RentalShopProductOptionItem?,
      minSelection: null == minSelection
          ? _value.minSelection
          : minSelection // ignore: cast_nullable_to_non_nullable
              as IntVO,
      maxSelection: null == maxSelection
          ? _value.maxSelection
          : maxSelection // ignore: cast_nullable_to_non_nullable
              as IntVO,
    ));
  }
}

/// @nodoc

class _$RentalShopProductOptionImpl extends _RentalShopProductOption {
  const _$RentalShopProductOptionImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.isRequired,
      required this.optionItems,
      required this.selectedOptionItem,
      required this.minSelection,
      required this.maxSelection})
      : super._();

  @override
  final DoubleVO id;
  @override
  final StringVO title;
  @override
  final StringVO description;
  @override
  final BooleanVO isRequired;
  @override
  final ListVO<RentalShopProductOptionItem> optionItems;
  @override
  final RentalShopProductOptionItem? selectedOptionItem;
  @override
  final IntVO minSelection;
  @override
  final IntVO maxSelection;

  @override
  String toString() {
    return 'RentalShopProductOption(id: $id, title: $title, description: $description, isRequired: $isRequired, optionItems: $optionItems, selectedOptionItem: $selectedOptionItem, minSelection: $minSelection, maxSelection: $maxSelection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalShopProductOptionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.optionItems, optionItems) ||
                other.optionItems == optionItems) &&
            (identical(other.selectedOptionItem, selectedOptionItem) ||
                other.selectedOptionItem == selectedOptionItem) &&
            (identical(other.minSelection, minSelection) ||
                other.minSelection == minSelection) &&
            (identical(other.maxSelection, maxSelection) ||
                other.maxSelection == maxSelection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      isRequired, optionItems, selectedOptionItem, minSelection, maxSelection);

  /// Create a copy of RentalShopProductOption
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalShopProductOptionImplCopyWith<_$RentalShopProductOptionImpl>
      get copyWith => __$$RentalShopProductOptionImplCopyWithImpl<
          _$RentalShopProductOptionImpl>(this, _$identity);
}

abstract class _RentalShopProductOption extends RentalShopProductOption {
  const factory _RentalShopProductOption(
      {required final DoubleVO id,
      required final StringVO title,
      required final StringVO description,
      required final BooleanVO isRequired,
      required final ListVO<RentalShopProductOptionItem> optionItems,
      required final RentalShopProductOptionItem? selectedOptionItem,
      required final IntVO minSelection,
      required final IntVO maxSelection}) = _$RentalShopProductOptionImpl;
  const _RentalShopProductOption._() : super._();

  @override
  DoubleVO get id;
  @override
  StringVO get title;
  @override
  StringVO get description;
  @override
  BooleanVO get isRequired;
  @override
  ListVO<RentalShopProductOptionItem> get optionItems;
  @override
  RentalShopProductOptionItem? get selectedOptionItem;
  @override
  IntVO get minSelection;
  @override
  IntVO get maxSelection;

  /// Create a copy of RentalShopProductOption
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalShopProductOptionImplCopyWith<_$RentalShopProductOptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_return.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalReturn {
  RentalReturnType get rentalReturnType => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;

  /// Create a copy of RentalReturn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalReturnCopyWith<RentalReturn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalReturnCopyWith<$Res> {
  factory $RentalReturnCopyWith(
          RentalReturn value, $Res Function(RentalReturn) then) =
      _$RentalReturnCopyWithImpl<$Res, RentalReturn>;
  @useResult
  $Res call({RentalReturnType rentalReturnType, Price price});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$RentalReturnCopyWithImpl<$Res, $Val extends RentalReturn>
    implements $RentalReturnCopyWith<$Res> {
  _$RentalReturnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalReturn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalReturnType = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      rentalReturnType: null == rentalReturnType
          ? _value.rentalReturnType
          : rentalReturnType // ignore: cast_nullable_to_non_nullable
              as RentalReturnType,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ) as $Val);
  }

  /// Create a copy of RentalReturn
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
abstract class _$$RentalReturnImplCopyWith<$Res>
    implements $RentalReturnCopyWith<$Res> {
  factory _$$RentalReturnImplCopyWith(
          _$RentalReturnImpl value, $Res Function(_$RentalReturnImpl) then) =
      __$$RentalReturnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RentalReturnType rentalReturnType, Price price});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$RentalReturnImplCopyWithImpl<$Res>
    extends _$RentalReturnCopyWithImpl<$Res, _$RentalReturnImpl>
    implements _$$RentalReturnImplCopyWith<$Res> {
  __$$RentalReturnImplCopyWithImpl(
      _$RentalReturnImpl _value, $Res Function(_$RentalReturnImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalReturn
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalReturnType = null,
    Object? price = null,
  }) {
    return _then(_$RentalReturnImpl(
      rentalReturnType: null == rentalReturnType
          ? _value.rentalReturnType
          : rentalReturnType // ignore: cast_nullable_to_non_nullable
              as RentalReturnType,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
    ));
  }
}

/// @nodoc

class _$RentalReturnImpl extends _RentalReturn {
  const _$RentalReturnImpl(
      {required this.rentalReturnType, required this.price})
      : super._();

  @override
  final RentalReturnType rentalReturnType;
  @override
  final Price price;

  @override
  String toString() {
    return 'RentalReturn(rentalReturnType: $rentalReturnType, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalReturnImpl &&
            (identical(other.rentalReturnType, rentalReturnType) ||
                other.rentalReturnType == rentalReturnType) &&
            (identical(other.price, price) || other.price == price));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentalReturnType, price);

  /// Create a copy of RentalReturn
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalReturnImplCopyWith<_$RentalReturnImpl> get copyWith =>
      __$$RentalReturnImplCopyWithImpl<_$RentalReturnImpl>(this, _$identity);
}

abstract class _RentalReturn extends RentalReturn {
  const factory _RentalReturn(
      {required final RentalReturnType rentalReturnType,
      required final Price price}) = _$RentalReturnImpl;
  const _RentalReturn._() : super._();

  @override
  RentalReturnType get rentalReturnType;
  @override
  Price get price;

  /// Create a copy of RentalReturn
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalReturnImplCopyWith<_$RentalReturnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

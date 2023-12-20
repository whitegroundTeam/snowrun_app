// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Address {
  StringVO get mainAddress => throw _privateConstructorUsedError;
  StringVO get detailAddress => throw _privateConstructorUsedError;
  StringVO get city => throw _privateConstructorUsedError;
  StringVO get stateOfProvince => throw _privateConstructorUsedError;
  StringVO get postalCode => throw _privateConstructorUsedError;
  StringVO get country => throw _privateConstructorUsedError;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call(
      {StringVO mainAddress,
      StringVO detailAddress,
      StringVO city,
      StringVO stateOfProvince,
      StringVO postalCode,
      StringVO country});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainAddress = null,
    Object? detailAddress = null,
    Object? city = null,
    Object? stateOfProvince = null,
    Object? postalCode = null,
    Object? country = null,
  }) {
    return _then(_value.copyWith(
      mainAddress: null == mainAddress
          ? _value.mainAddress
          : mainAddress // ignore: cast_nullable_to_non_nullable
              as StringVO,
      detailAddress: null == detailAddress
          ? _value.detailAddress
          : detailAddress // ignore: cast_nullable_to_non_nullable
              as StringVO,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringVO,
      stateOfProvince: null == stateOfProvince
          ? _value.stateOfProvince
          : stateOfProvince // ignore: cast_nullable_to_non_nullable
              as StringVO,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as StringVO,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddressImplCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$AddressImplCopyWith(
          _$AddressImpl value, $Res Function(_$AddressImpl) then) =
      __$$AddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StringVO mainAddress,
      StringVO detailAddress,
      StringVO city,
      StringVO stateOfProvince,
      StringVO postalCode,
      StringVO country});
}

/// @nodoc
class __$$AddressImplCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$AddressImpl>
    implements _$$AddressImplCopyWith<$Res> {
  __$$AddressImplCopyWithImpl(
      _$AddressImpl _value, $Res Function(_$AddressImpl) _then)
      : super(_value, _then);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainAddress = null,
    Object? detailAddress = null,
    Object? city = null,
    Object? stateOfProvince = null,
    Object? postalCode = null,
    Object? country = null,
  }) {
    return _then(_$AddressImpl(
      mainAddress: null == mainAddress
          ? _value.mainAddress
          : mainAddress // ignore: cast_nullable_to_non_nullable
              as StringVO,
      detailAddress: null == detailAddress
          ? _value.detailAddress
          : detailAddress // ignore: cast_nullable_to_non_nullable
              as StringVO,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as StringVO,
      stateOfProvince: null == stateOfProvince
          ? _value.stateOfProvince
          : stateOfProvince // ignore: cast_nullable_to_non_nullable
              as StringVO,
      postalCode: null == postalCode
          ? _value.postalCode
          : postalCode // ignore: cast_nullable_to_non_nullable
              as StringVO,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as StringVO,
    ));
  }
}

/// @nodoc

class _$AddressImpl extends _Address {
  const _$AddressImpl(
      {required this.mainAddress,
      required this.detailAddress,
      required this.city,
      required this.stateOfProvince,
      required this.postalCode,
      required this.country})
      : super._();

  @override
  final StringVO mainAddress;
  @override
  final StringVO detailAddress;
  @override
  final StringVO city;
  @override
  final StringVO stateOfProvince;
  @override
  final StringVO postalCode;
  @override
  final StringVO country;

  @override
  String toString() {
    return 'Address(mainAddress: $mainAddress, detailAddress: $detailAddress, city: $city, stateOfProvince: $stateOfProvince, postalCode: $postalCode, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddressImpl &&
            (identical(other.mainAddress, mainAddress) ||
                other.mainAddress == mainAddress) &&
            (identical(other.detailAddress, detailAddress) ||
                other.detailAddress == detailAddress) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.stateOfProvince, stateOfProvince) ||
                other.stateOfProvince == stateOfProvince) &&
            (identical(other.postalCode, postalCode) ||
                other.postalCode == postalCode) &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mainAddress, detailAddress, city,
      stateOfProvince, postalCode, country);

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      __$$AddressImplCopyWithImpl<_$AddressImpl>(this, _$identity);
}

abstract class _Address extends Address {
  const factory _Address(
      {required final StringVO mainAddress,
      required final StringVO detailAddress,
      required final StringVO city,
      required final StringVO stateOfProvince,
      required final StringVO postalCode,
      required final StringVO country}) = _$AddressImpl;
  const _Address._() : super._();

  @override
  StringVO get mainAddress;
  @override
  StringVO get detailAddress;
  @override
  StringVO get city;
  @override
  StringVO get stateOfProvince;
  @override
  StringVO get postalCode;
  @override
  StringVO get country;

  /// Create a copy of Address
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddressImplCopyWith<_$AddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

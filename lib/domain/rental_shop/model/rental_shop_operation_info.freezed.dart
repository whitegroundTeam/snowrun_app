// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_shop_operation_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalShopOperationInfo {
  IntVO get adultAge => throw _privateConstructorUsedError;
  ListVO<RentalShopOperationTime> get rentalShopOperationTimes =>
      throw _privateConstructorUsedError;
  ListVO<RentalReturn> get rentalReturnMethods =>
      throw _privateConstructorUsedError;

  /// Create a copy of RentalShopOperationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalShopOperationInfoCopyWith<RentalShopOperationInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalShopOperationInfoCopyWith<$Res> {
  factory $RentalShopOperationInfoCopyWith(RentalShopOperationInfo value,
          $Res Function(RentalShopOperationInfo) then) =
      _$RentalShopOperationInfoCopyWithImpl<$Res, RentalShopOperationInfo>;
  @useResult
  $Res call(
      {IntVO adultAge,
      ListVO<RentalShopOperationTime> rentalShopOperationTimes,
      ListVO<RentalReturn> rentalReturnMethods});
}

/// @nodoc
class _$RentalShopOperationInfoCopyWithImpl<$Res,
        $Val extends RentalShopOperationInfo>
    implements $RentalShopOperationInfoCopyWith<$Res> {
  _$RentalShopOperationInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalShopOperationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adultAge = null,
    Object? rentalShopOperationTimes = null,
    Object? rentalReturnMethods = null,
  }) {
    return _then(_value.copyWith(
      adultAge: null == adultAge
          ? _value.adultAge
          : adultAge // ignore: cast_nullable_to_non_nullable
              as IntVO,
      rentalShopOperationTimes: null == rentalShopOperationTimes
          ? _value.rentalShopOperationTimes
          : rentalShopOperationTimes // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopOperationTime>,
      rentalReturnMethods: null == rentalReturnMethods
          ? _value.rentalReturnMethods
          : rentalReturnMethods // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalReturn>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RentalShopOperationInfoImplCopyWith<$Res>
    implements $RentalShopOperationInfoCopyWith<$Res> {
  factory _$$RentalShopOperationInfoImplCopyWith(
          _$RentalShopOperationInfoImpl value,
          $Res Function(_$RentalShopOperationInfoImpl) then) =
      __$$RentalShopOperationInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IntVO adultAge,
      ListVO<RentalShopOperationTime> rentalShopOperationTimes,
      ListVO<RentalReturn> rentalReturnMethods});
}

/// @nodoc
class __$$RentalShopOperationInfoImplCopyWithImpl<$Res>
    extends _$RentalShopOperationInfoCopyWithImpl<$Res,
        _$RentalShopOperationInfoImpl>
    implements _$$RentalShopOperationInfoImplCopyWith<$Res> {
  __$$RentalShopOperationInfoImplCopyWithImpl(
      _$RentalShopOperationInfoImpl _value,
      $Res Function(_$RentalShopOperationInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalShopOperationInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adultAge = null,
    Object? rentalShopOperationTimes = null,
    Object? rentalReturnMethods = null,
  }) {
    return _then(_$RentalShopOperationInfoImpl(
      adultAge: null == adultAge
          ? _value.adultAge
          : adultAge // ignore: cast_nullable_to_non_nullable
              as IntVO,
      rentalShopOperationTimes: null == rentalShopOperationTimes
          ? _value.rentalShopOperationTimes
          : rentalShopOperationTimes // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalShopOperationTime>,
      rentalReturnMethods: null == rentalReturnMethods
          ? _value.rentalReturnMethods
          : rentalReturnMethods // ignore: cast_nullable_to_non_nullable
              as ListVO<RentalReturn>,
    ));
  }
}

/// @nodoc

class _$RentalShopOperationInfoImpl extends _RentalShopOperationInfo {
  const _$RentalShopOperationInfoImpl(
      {required this.adultAge,
      required this.rentalShopOperationTimes,
      required this.rentalReturnMethods})
      : super._();

  @override
  final IntVO adultAge;
  @override
  final ListVO<RentalShopOperationTime> rentalShopOperationTimes;
  @override
  final ListVO<RentalReturn> rentalReturnMethods;

  @override
  String toString() {
    return 'RentalShopOperationInfo(adultAge: $adultAge, rentalShopOperationTimes: $rentalShopOperationTimes, rentalReturnMethods: $rentalReturnMethods)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalShopOperationInfoImpl &&
            (identical(other.adultAge, adultAge) ||
                other.adultAge == adultAge) &&
            (identical(
                    other.rentalShopOperationTimes, rentalShopOperationTimes) ||
                other.rentalShopOperationTimes == rentalShopOperationTimes) &&
            (identical(other.rentalReturnMethods, rentalReturnMethods) ||
                other.rentalReturnMethods == rentalReturnMethods));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, adultAge, rentalShopOperationTimes, rentalReturnMethods);

  /// Create a copy of RentalShopOperationInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalShopOperationInfoImplCopyWith<_$RentalShopOperationInfoImpl>
      get copyWith => __$$RentalShopOperationInfoImplCopyWithImpl<
          _$RentalShopOperationInfoImpl>(this, _$identity);
}

abstract class _RentalShopOperationInfo extends RentalShopOperationInfo {
  const factory _RentalShopOperationInfo(
      {required final IntVO adultAge,
      required final ListVO<RentalShopOperationTime> rentalShopOperationTimes,
      required final ListVO<RentalReturn>
          rentalReturnMethods}) = _$RentalShopOperationInfoImpl;
  const _RentalShopOperationInfo._() : super._();

  @override
  IntVO get adultAge;
  @override
  ListVO<RentalShopOperationTime> get rentalShopOperationTimes;
  @override
  ListVO<RentalReturn> get rentalReturnMethods;

  /// Create a copy of RentalShopOperationInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalShopOperationInfoImplCopyWith<_$RentalShopOperationInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

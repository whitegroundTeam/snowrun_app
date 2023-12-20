// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rental_shop_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RentalShopEvent {
  String get rentalShopAccessCode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rentalShopAccessCode) getRentalShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rentalShopAccessCode)? getRentalShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rentalShopAccessCode)? getRentalShop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRentalShop value) getRentalShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRentalShop value)? getRentalShop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRentalShop value)? getRentalShop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RentalShopEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalShopEventCopyWith<RentalShopEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalShopEventCopyWith<$Res> {
  factory $RentalShopEventCopyWith(
          RentalShopEvent value, $Res Function(RentalShopEvent) then) =
      _$RentalShopEventCopyWithImpl<$Res, RentalShopEvent>;
  @useResult
  $Res call({String rentalShopAccessCode});
}

/// @nodoc
class _$RentalShopEventCopyWithImpl<$Res, $Val extends RentalShopEvent>
    implements $RentalShopEventCopyWith<$Res> {
  _$RentalShopEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalShopEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalShopAccessCode = null,
  }) {
    return _then(_value.copyWith(
      rentalShopAccessCode: null == rentalShopAccessCode
          ? _value.rentalShopAccessCode
          : rentalShopAccessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetRentalShopImplCopyWith<$Res>
    implements $RentalShopEventCopyWith<$Res> {
  factory _$$GetRentalShopImplCopyWith(
          _$GetRentalShopImpl value, $Res Function(_$GetRentalShopImpl) then) =
      __$$GetRentalShopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String rentalShopAccessCode});
}

/// @nodoc
class __$$GetRentalShopImplCopyWithImpl<$Res>
    extends _$RentalShopEventCopyWithImpl<$Res, _$GetRentalShopImpl>
    implements _$$GetRentalShopImplCopyWith<$Res> {
  __$$GetRentalShopImplCopyWithImpl(
      _$GetRentalShopImpl _value, $Res Function(_$GetRentalShopImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalShopEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rentalShopAccessCode = null,
  }) {
    return _then(_$GetRentalShopImpl(
      rentalShopAccessCode: null == rentalShopAccessCode
          ? _value.rentalShopAccessCode
          : rentalShopAccessCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRentalShopImpl implements _GetRentalShop {
  const _$GetRentalShopImpl({required this.rentalShopAccessCode});

  @override
  final String rentalShopAccessCode;

  @override
  String toString() {
    return 'RentalShopEvent.getRentalShop(rentalShopAccessCode: $rentalShopAccessCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRentalShopImpl &&
            (identical(other.rentalShopAccessCode, rentalShopAccessCode) ||
                other.rentalShopAccessCode == rentalShopAccessCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rentalShopAccessCode);

  /// Create a copy of RentalShopEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRentalShopImplCopyWith<_$GetRentalShopImpl> get copyWith =>
      __$$GetRentalShopImplCopyWithImpl<_$GetRentalShopImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rentalShopAccessCode) getRentalShop,
  }) {
    return getRentalShop(rentalShopAccessCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rentalShopAccessCode)? getRentalShop,
  }) {
    return getRentalShop?.call(rentalShopAccessCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rentalShopAccessCode)? getRentalShop,
    required TResult orElse(),
  }) {
    if (getRentalShop != null) {
      return getRentalShop(rentalShopAccessCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRentalShop value) getRentalShop,
  }) {
    return getRentalShop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRentalShop value)? getRentalShop,
  }) {
    return getRentalShop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRentalShop value)? getRentalShop,
    required TResult orElse(),
  }) {
    if (getRentalShop != null) {
      return getRentalShop(this);
    }
    return orElse();
  }
}

abstract class _GetRentalShop implements RentalShopEvent {
  const factory _GetRentalShop({required final String rentalShopAccessCode}) =
      _$GetRentalShopImpl;

  @override
  String get rentalShopAccessCode;

  /// Create a copy of RentalShopEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetRentalShopImplCopyWith<_$GetRentalShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RentalShopState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  RentalShop get rentalShop => throw _privateConstructorUsedError;

  /// Create a copy of RentalShopState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RentalShopStateCopyWith<RentalShopState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RentalShopStateCopyWith<$Res> {
  factory $RentalShopStateCopyWith(
          RentalShopState value, $Res Function(RentalShopState) then) =
      _$RentalShopStateCopyWithImpl<$Res, RentalShopState>;
  @useResult
  $Res call({DefaultStatus status, RentalShop rentalShop});

  $RentalShopCopyWith<$Res> get rentalShop;
}

/// @nodoc
class _$RentalShopStateCopyWithImpl<$Res, $Val extends RentalShopState>
    implements $RentalShopStateCopyWith<$Res> {
  _$RentalShopStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RentalShopState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rentalShop = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      rentalShop: null == rentalShop
          ? _value.rentalShop
          : rentalShop // ignore: cast_nullable_to_non_nullable
              as RentalShop,
    ) as $Val);
  }

  /// Create a copy of RentalShopState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalShopCopyWith<$Res> get rentalShop {
    return $RentalShopCopyWith<$Res>(_value.rentalShop, (value) {
      return _then(_value.copyWith(rentalShop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RentalShopStateImplCopyWith<$Res>
    implements $RentalShopStateCopyWith<$Res> {
  factory _$$RentalShopStateImplCopyWith(_$RentalShopStateImpl value,
          $Res Function(_$RentalShopStateImpl) then) =
      __$$RentalShopStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultStatus status, RentalShop rentalShop});

  @override
  $RentalShopCopyWith<$Res> get rentalShop;
}

/// @nodoc
class __$$RentalShopStateImplCopyWithImpl<$Res>
    extends _$RentalShopStateCopyWithImpl<$Res, _$RentalShopStateImpl>
    implements _$$RentalShopStateImplCopyWith<$Res> {
  __$$RentalShopStateImplCopyWithImpl(
      _$RentalShopStateImpl _value, $Res Function(_$RentalShopStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RentalShopState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rentalShop = null,
  }) {
    return _then(_$RentalShopStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      rentalShop: null == rentalShop
          ? _value.rentalShop
          : rentalShop // ignore: cast_nullable_to_non_nullable
              as RentalShop,
    ));
  }
}

/// @nodoc

class _$RentalShopStateImpl implements _RentalShopState {
  const _$RentalShopStateImpl({required this.status, required this.rentalShop});

  @override
  final DefaultStatus status;
  @override
  final RentalShop rentalShop;

  @override
  String toString() {
    return 'RentalShopState(status: $status, rentalShop: $rentalShop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RentalShopStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.rentalShop, rentalShop) ||
                other.rentalShop == rentalShop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, rentalShop);

  /// Create a copy of RentalShopState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RentalShopStateImplCopyWith<_$RentalShopStateImpl> get copyWith =>
      __$$RentalShopStateImplCopyWithImpl<_$RentalShopStateImpl>(
          this, _$identity);
}

abstract class _RentalShopState implements RentalShopState {
  const factory _RentalShopState(
      {required final DefaultStatus status,
      required final RentalShop rentalShop}) = _$RentalShopStateImpl;

  @override
  DefaultStatus get status;
  @override
  RentalShop get rentalShop;

  /// Create a copy of RentalShopState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RentalShopStateImplCopyWith<_$RentalShopStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

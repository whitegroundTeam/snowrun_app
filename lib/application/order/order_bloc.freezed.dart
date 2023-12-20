// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental rental) addRental,
    required TResult Function(Rental rental) removeRental,
    required TResult Function() removeAllRentals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental rental)? addRental,
    TResult? Function(Rental rental)? removeRental,
    TResult? Function()? removeAllRentals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental rental)? addRental,
    TResult Function(Rental rental)? removeRental,
    TResult Function()? removeAllRentals,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRental value) addRental,
    required TResult Function(_RemoveRental value) removeRental,
    required TResult Function(_RemoveAllRentals value) removeAllRentals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRental value)? addRental,
    TResult? Function(_RemoveRental value)? removeRental,
    TResult? Function(_RemoveAllRentals value)? removeAllRentals,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRental value)? addRental,
    TResult Function(_RemoveRental value)? removeRental,
    TResult Function(_RemoveAllRentals value)? removeAllRentals,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderEventCopyWith<$Res> {
  factory $OrderEventCopyWith(
          OrderEvent value, $Res Function(OrderEvent) then) =
      _$OrderEventCopyWithImpl<$Res, OrderEvent>;
}

/// @nodoc
class _$OrderEventCopyWithImpl<$Res, $Val extends OrderEvent>
    implements $OrderEventCopyWith<$Res> {
  _$OrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AddRentalImplCopyWith<$Res> {
  factory _$$AddRentalImplCopyWith(
          _$AddRentalImpl value, $Res Function(_$AddRentalImpl) then) =
      __$$AddRentalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Rental rental});

  $RentalCopyWith<$Res> get rental;
}

/// @nodoc
class __$$AddRentalImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$AddRentalImpl>
    implements _$$AddRentalImplCopyWith<$Res> {
  __$$AddRentalImplCopyWithImpl(
      _$AddRentalImpl _value, $Res Function(_$AddRentalImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rental = null,
  }) {
    return _then(_$AddRentalImpl(
      rental: null == rental
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental,
    ));
  }

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalCopyWith<$Res> get rental {
    return $RentalCopyWith<$Res>(_value.rental, (value) {
      return _then(_value.copyWith(rental: value));
    });
  }
}

/// @nodoc

class _$AddRentalImpl implements _AddRental {
  const _$AddRentalImpl({required this.rental});

  @override
  final Rental rental;

  @override
  String toString() {
    return 'OrderEvent.addRental(rental: $rental)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRentalImpl &&
            (identical(other.rental, rental) || other.rental == rental));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rental);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRentalImplCopyWith<_$AddRentalImpl> get copyWith =>
      __$$AddRentalImplCopyWithImpl<_$AddRentalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental rental) addRental,
    required TResult Function(Rental rental) removeRental,
    required TResult Function() removeAllRentals,
  }) {
    return addRental(rental);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental rental)? addRental,
    TResult? Function(Rental rental)? removeRental,
    TResult? Function()? removeAllRentals,
  }) {
    return addRental?.call(rental);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental rental)? addRental,
    TResult Function(Rental rental)? removeRental,
    TResult Function()? removeAllRentals,
    required TResult orElse(),
  }) {
    if (addRental != null) {
      return addRental(rental);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRental value) addRental,
    required TResult Function(_RemoveRental value) removeRental,
    required TResult Function(_RemoveAllRentals value) removeAllRentals,
  }) {
    return addRental(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRental value)? addRental,
    TResult? Function(_RemoveRental value)? removeRental,
    TResult? Function(_RemoveAllRentals value)? removeAllRentals,
  }) {
    return addRental?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRental value)? addRental,
    TResult Function(_RemoveRental value)? removeRental,
    TResult Function(_RemoveAllRentals value)? removeAllRentals,
    required TResult orElse(),
  }) {
    if (addRental != null) {
      return addRental(this);
    }
    return orElse();
  }
}

abstract class _AddRental implements OrderEvent {
  const factory _AddRental({required final Rental rental}) = _$AddRentalImpl;

  Rental get rental;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddRentalImplCopyWith<_$AddRentalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveRentalImplCopyWith<$Res> {
  factory _$$RemoveRentalImplCopyWith(
          _$RemoveRentalImpl value, $Res Function(_$RemoveRentalImpl) then) =
      __$$RemoveRentalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Rental rental});

  $RentalCopyWith<$Res> get rental;
}

/// @nodoc
class __$$RemoveRentalImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$RemoveRentalImpl>
    implements _$$RemoveRentalImplCopyWith<$Res> {
  __$$RemoveRentalImplCopyWithImpl(
      _$RemoveRentalImpl _value, $Res Function(_$RemoveRentalImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rental = null,
  }) {
    return _then(_$RemoveRentalImpl(
      rental: null == rental
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental,
    ));
  }

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalCopyWith<$Res> get rental {
    return $RentalCopyWith<$Res>(_value.rental, (value) {
      return _then(_value.copyWith(rental: value));
    });
  }
}

/// @nodoc

class _$RemoveRentalImpl implements _RemoveRental {
  const _$RemoveRentalImpl({required this.rental});

  @override
  final Rental rental;

  @override
  String toString() {
    return 'OrderEvent.removeRental(rental: $rental)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveRentalImpl &&
            (identical(other.rental, rental) || other.rental == rental));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rental);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveRentalImplCopyWith<_$RemoveRentalImpl> get copyWith =>
      __$$RemoveRentalImplCopyWithImpl<_$RemoveRentalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental rental) addRental,
    required TResult Function(Rental rental) removeRental,
    required TResult Function() removeAllRentals,
  }) {
    return removeRental(rental);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental rental)? addRental,
    TResult? Function(Rental rental)? removeRental,
    TResult? Function()? removeAllRentals,
  }) {
    return removeRental?.call(rental);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental rental)? addRental,
    TResult Function(Rental rental)? removeRental,
    TResult Function()? removeAllRentals,
    required TResult orElse(),
  }) {
    if (removeRental != null) {
      return removeRental(rental);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRental value) addRental,
    required TResult Function(_RemoveRental value) removeRental,
    required TResult Function(_RemoveAllRentals value) removeAllRentals,
  }) {
    return removeRental(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRental value)? addRental,
    TResult? Function(_RemoveRental value)? removeRental,
    TResult? Function(_RemoveAllRentals value)? removeAllRentals,
  }) {
    return removeRental?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRental value)? addRental,
    TResult Function(_RemoveRental value)? removeRental,
    TResult Function(_RemoveAllRentals value)? removeAllRentals,
    required TResult orElse(),
  }) {
    if (removeRental != null) {
      return removeRental(this);
    }
    return orElse();
  }
}

abstract class _RemoveRental implements OrderEvent {
  const factory _RemoveRental({required final Rental rental}) =
      _$RemoveRentalImpl;

  Rental get rental;

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveRentalImplCopyWith<_$RemoveRentalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveAllRentalsImplCopyWith<$Res> {
  factory _$$RemoveAllRentalsImplCopyWith(_$RemoveAllRentalsImpl value,
          $Res Function(_$RemoveAllRentalsImpl) then) =
      __$$RemoveAllRentalsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveAllRentalsImplCopyWithImpl<$Res>
    extends _$OrderEventCopyWithImpl<$Res, _$RemoveAllRentalsImpl>
    implements _$$RemoveAllRentalsImplCopyWith<$Res> {
  __$$RemoveAllRentalsImplCopyWithImpl(_$RemoveAllRentalsImpl _value,
      $Res Function(_$RemoveAllRentalsImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RemoveAllRentalsImpl implements _RemoveAllRentals {
  const _$RemoveAllRentalsImpl();

  @override
  String toString() {
    return 'OrderEvent.removeAllRentals()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveAllRentalsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental rental) addRental,
    required TResult Function(Rental rental) removeRental,
    required TResult Function() removeAllRentals,
  }) {
    return removeAllRentals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental rental)? addRental,
    TResult? Function(Rental rental)? removeRental,
    TResult? Function()? removeAllRentals,
  }) {
    return removeAllRentals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental rental)? addRental,
    TResult Function(Rental rental)? removeRental,
    TResult Function()? removeAllRentals,
    required TResult orElse(),
  }) {
    if (removeAllRentals != null) {
      return removeAllRentals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddRental value) addRental,
    required TResult Function(_RemoveRental value) removeRental,
    required TResult Function(_RemoveAllRentals value) removeAllRentals,
  }) {
    return removeAllRentals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddRental value)? addRental,
    TResult? Function(_RemoveRental value)? removeRental,
    TResult? Function(_RemoveAllRentals value)? removeAllRentals,
  }) {
    return removeAllRentals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddRental value)? addRental,
    TResult Function(_RemoveRental value)? removeRental,
    TResult Function(_RemoveAllRentals value)? removeAllRentals,
    required TResult orElse(),
  }) {
    if (removeAllRentals != null) {
      return removeAllRentals(this);
    }
    return orElse();
  }
}

abstract class _RemoveAllRentals implements OrderEvent {
  const factory _RemoveAllRentals() = _$RemoveAllRentalsImpl;
}

/// @nodoc
mixin _$OrderState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  List<Rental> get rentals => throw _privateConstructorUsedError;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OrderStateCopyWith<OrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStateCopyWith<$Res> {
  factory $OrderStateCopyWith(
          OrderState value, $Res Function(OrderState) then) =
      _$OrderStateCopyWithImpl<$Res, OrderState>;
  @useResult
  $Res call({DefaultStatus status, List<Rental> rentals});
}

/// @nodoc
class _$OrderStateCopyWithImpl<$Res, $Val extends OrderState>
    implements $OrderStateCopyWith<$Res> {
  _$OrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rentals = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      rentals: null == rentals
          ? _value.rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<Rental>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderStateImplCopyWith<$Res>
    implements $OrderStateCopyWith<$Res> {
  factory _$$OrderStateImplCopyWith(
          _$OrderStateImpl value, $Res Function(_$OrderStateImpl) then) =
      __$$OrderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultStatus status, List<Rental> rentals});
}

/// @nodoc
class __$$OrderStateImplCopyWithImpl<$Res>
    extends _$OrderStateCopyWithImpl<$Res, _$OrderStateImpl>
    implements _$$OrderStateImplCopyWith<$Res> {
  __$$OrderStateImplCopyWithImpl(
      _$OrderStateImpl _value, $Res Function(_$OrderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? rentals = null,
  }) {
    return _then(_$OrderStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      rentals: null == rentals
          ? _value._rentals
          : rentals // ignore: cast_nullable_to_non_nullable
              as List<Rental>,
    ));
  }
}

/// @nodoc

class _$OrderStateImpl implements _OrderState {
  const _$OrderStateImpl(
      {required this.status, required final List<Rental> rentals})
      : _rentals = rentals;

  @override
  final DefaultStatus status;
  final List<Rental> _rentals;
  @override
  List<Rental> get rentals {
    if (_rentals is EqualUnmodifiableListView) return _rentals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rentals);
  }

  @override
  String toString() {
    return 'OrderState(status: $status, rentals: $rentals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._rentals, _rentals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_rentals));

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      __$$OrderStateImplCopyWithImpl<_$OrderStateImpl>(this, _$identity);
}

abstract class _OrderState implements OrderState {
  const factory _OrderState(
      {required final DefaultStatus status,
      required final List<Rental> rentals}) = _$OrderStateImpl;

  @override
  DefaultStatus get status;
  @override
  List<Rental> get rentals;

  /// Create a copy of OrderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OrderStateImplCopyWith<_$OrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

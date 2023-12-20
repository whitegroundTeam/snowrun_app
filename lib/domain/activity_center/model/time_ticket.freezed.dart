// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_ticket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeTicket {
  DoubleVO get id => throw _privateConstructorUsedError;
  StringVO get name => throw _privateConstructorUsedError;
  Price get price => throw _privateConstructorUsedError;
  bool? get isSelected => throw _privateConstructorUsedError;

  /// Create a copy of TimeTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeTicketCopyWith<TimeTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTicketCopyWith<$Res> {
  factory $TimeTicketCopyWith(
          TimeTicket value, $Res Function(TimeTicket) then) =
      _$TimeTicketCopyWithImpl<$Res, TimeTicket>;
  @useResult
  $Res call({DoubleVO id, StringVO name, Price price, bool? isSelected});

  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class _$TimeTicketCopyWithImpl<$Res, $Val extends TimeTicket>
    implements $TimeTicketCopyWith<$Res> {
  _$TimeTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? isSelected = freezed,
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
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of TimeTicket
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
abstract class _$$TimeTicketImplCopyWith<$Res>
    implements $TimeTicketCopyWith<$Res> {
  factory _$$TimeTicketImplCopyWith(
          _$TimeTicketImpl value, $Res Function(_$TimeTicketImpl) then) =
      __$$TimeTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DoubleVO id, StringVO name, Price price, bool? isSelected});

  @override
  $PriceCopyWith<$Res> get price;
}

/// @nodoc
class __$$TimeTicketImplCopyWithImpl<$Res>
    extends _$TimeTicketCopyWithImpl<$Res, _$TimeTicketImpl>
    implements _$$TimeTicketImplCopyWith<$Res> {
  __$$TimeTicketImplCopyWithImpl(
      _$TimeTicketImpl _value, $Res Function(_$TimeTicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? isSelected = freezed,
  }) {
    return _then(_$TimeTicketImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as DoubleVO,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as StringVO,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as Price,
      isSelected: freezed == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$TimeTicketImpl extends _TimeTicket {
  const _$TimeTicketImpl(
      {required this.id,
      required this.name,
      required this.price,
      this.isSelected})
      : super._();

  @override
  final DoubleVO id;
  @override
  final StringVO name;
  @override
  final Price price;
  @override
  final bool? isSelected;

  @override
  String toString() {
    return 'TimeTicket(id: $id, name: $name, price: $price, isSelected: $isSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeTicketImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, isSelected);

  /// Create a copy of TimeTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeTicketImplCopyWith<_$TimeTicketImpl> get copyWith =>
      __$$TimeTicketImplCopyWithImpl<_$TimeTicketImpl>(this, _$identity);
}

abstract class _TimeTicket extends TimeTicket {
  const factory _TimeTicket(
      {required final DoubleVO id,
      required final StringVO name,
      required final Price price,
      final bool? isSelected}) = _$TimeTicketImpl;
  const _TimeTicket._() : super._();

  @override
  DoubleVO get id;
  @override
  StringVO get name;
  @override
  Price get price;
  @override
  bool? get isSelected;

  /// Create a copy of TimeTicket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeTicketImplCopyWith<_$TimeTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

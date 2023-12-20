// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'date_time_tickets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DateTimeTickets {
  DateTimeVO? get startAt => throw _privateConstructorUsedError;
  DateTimeVO? get endAt => throw _privateConstructorUsedError;
  ListVO<TimeTicket> get timeTickets => throw _privateConstructorUsedError;

  /// Create a copy of DateTimeTickets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DateTimeTicketsCopyWith<DateTimeTickets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimeTicketsCopyWith<$Res> {
  factory $DateTimeTicketsCopyWith(
          DateTimeTickets value, $Res Function(DateTimeTickets) then) =
      _$DateTimeTicketsCopyWithImpl<$Res, DateTimeTickets>;
  @useResult
  $Res call(
      {DateTimeVO? startAt, DateTimeVO? endAt, ListVO<TimeTicket> timeTickets});
}

/// @nodoc
class _$DateTimeTicketsCopyWithImpl<$Res, $Val extends DateTimeTickets>
    implements $DateTimeTicketsCopyWith<$Res> {
  _$DateTimeTicketsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DateTimeTickets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? timeTickets = null,
  }) {
    return _then(_value.copyWith(
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTimeVO?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTimeVO?,
      timeTickets: null == timeTickets
          ? _value.timeTickets
          : timeTickets // ignore: cast_nullable_to_non_nullable
              as ListVO<TimeTicket>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateTimeTicketsImplCopyWith<$Res>
    implements $DateTimeTicketsCopyWith<$Res> {
  factory _$$DateTimeTicketsImplCopyWith(_$DateTimeTicketsImpl value,
          $Res Function(_$DateTimeTicketsImpl) then) =
      __$$DateTimeTicketsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTimeVO? startAt, DateTimeVO? endAt, ListVO<TimeTicket> timeTickets});
}

/// @nodoc
class __$$DateTimeTicketsImplCopyWithImpl<$Res>
    extends _$DateTimeTicketsCopyWithImpl<$Res, _$DateTimeTicketsImpl>
    implements _$$DateTimeTicketsImplCopyWith<$Res> {
  __$$DateTimeTicketsImplCopyWithImpl(
      _$DateTimeTicketsImpl _value, $Res Function(_$DateTimeTicketsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DateTimeTickets
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? timeTickets = null,
  }) {
    return _then(_$DateTimeTicketsImpl(
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTimeVO?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTimeVO?,
      timeTickets: null == timeTickets
          ? _value.timeTickets
          : timeTickets // ignore: cast_nullable_to_non_nullable
              as ListVO<TimeTicket>,
    ));
  }
}

/// @nodoc

class _$DateTimeTicketsImpl extends _DateTimeTickets {
  const _$DateTimeTicketsImpl(
      {required this.startAt, required this.endAt, required this.timeTickets})
      : super._();

  @override
  final DateTimeVO? startAt;
  @override
  final DateTimeVO? endAt;
  @override
  final ListVO<TimeTicket> timeTickets;

  @override
  String toString() {
    return 'DateTimeTickets(startAt: $startAt, endAt: $endAt, timeTickets: $timeTickets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateTimeTicketsImpl &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.timeTickets, timeTickets) ||
                other.timeTickets == timeTickets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startAt, endAt, timeTickets);

  /// Create a copy of DateTimeTickets
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DateTimeTicketsImplCopyWith<_$DateTimeTicketsImpl> get copyWith =>
      __$$DateTimeTicketsImplCopyWithImpl<_$DateTimeTicketsImpl>(
          this, _$identity);
}

abstract class _DateTimeTickets extends DateTimeTickets {
  const factory _DateTimeTickets(
      {required final DateTimeVO? startAt,
      required final DateTimeVO? endAt,
      required final ListVO<TimeTicket> timeTickets}) = _$DateTimeTicketsImpl;
  const _DateTimeTickets._() : super._();

  @override
  DateTimeVO? get startAt;
  @override
  DateTimeVO? get endAt;
  @override
  ListVO<TimeTicket> get timeTickets;

  /// Create a copy of DateTimeTickets
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DateTimeTicketsImplCopyWith<_$DateTimeTicketsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

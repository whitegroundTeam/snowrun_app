// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_ticket_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeTicketActorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental? rental) init,
    required TResult Function(DateTime? startAt) setStartAt,
    required TResult Function(DateTime? endAt) setEndAt,
    required TResult Function() selectAdultButton,
    required TResult Function() getTiemTickets,
    required TResult Function(TimeTicket timeTicket) selectTimeTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental? rental)? init,
    TResult? Function(DateTime? startAt)? setStartAt,
    TResult? Function(DateTime? endAt)? setEndAt,
    TResult? Function()? selectAdultButton,
    TResult? Function()? getTiemTickets,
    TResult? Function(TimeTicket timeTicket)? selectTimeTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental? rental)? init,
    TResult Function(DateTime? startAt)? setStartAt,
    TResult Function(DateTime? endAt)? setEndAt,
    TResult Function()? selectAdultButton,
    TResult Function()? getTiemTickets,
    TResult Function(TimeTicket timeTicket)? selectTimeTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetStartAt value) setStartAt,
    required TResult Function(_SetEndAt value) setEndAt,
    required TResult Function(_SelectAdultButton value) selectAdultButton,
    required TResult Function(_GetTiemTickets value) getTiemTickets,
    required TResult Function(_SelectTimeTicket value) selectTimeTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetStartAt value)? setStartAt,
    TResult? Function(_SetEndAt value)? setEndAt,
    TResult? Function(_SelectAdultButton value)? selectAdultButton,
    TResult? Function(_GetTiemTickets value)? getTiemTickets,
    TResult? Function(_SelectTimeTicket value)? selectTimeTicket,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetStartAt value)? setStartAt,
    TResult Function(_SetEndAt value)? setEndAt,
    TResult Function(_SelectAdultButton value)? selectAdultButton,
    TResult Function(_GetTiemTickets value)? getTiemTickets,
    TResult Function(_SelectTimeTicket value)? selectTimeTicket,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTicketActorEventCopyWith<$Res> {
  factory $TimeTicketActorEventCopyWith(TimeTicketActorEvent value,
          $Res Function(TimeTicketActorEvent) then) =
      _$TimeTicketActorEventCopyWithImpl<$Res, TimeTicketActorEvent>;
}

/// @nodoc
class _$TimeTicketActorEventCopyWithImpl<$Res,
        $Val extends TimeTicketActorEvent>
    implements $TimeTicketActorEventCopyWith<$Res> {
  _$TimeTicketActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitImplCopyWith<$Res> {
  factory _$$InitImplCopyWith(
          _$InitImpl value, $Res Function(_$InitImpl) then) =
      __$$InitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Rental? rental});

  $RentalCopyWith<$Res>? get rental;
}

/// @nodoc
class __$$InitImplCopyWithImpl<$Res>
    extends _$TimeTicketActorEventCopyWithImpl<$Res, _$InitImpl>
    implements _$$InitImplCopyWith<$Res> {
  __$$InitImplCopyWithImpl(_$InitImpl _value, $Res Function(_$InitImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rental = freezed,
  }) {
    return _then(_$InitImpl(
      rental: freezed == rental
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental?,
    ));
  }

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalCopyWith<$Res>? get rental {
    if (_value.rental == null) {
      return null;
    }

    return $RentalCopyWith<$Res>(_value.rental!, (value) {
      return _then(_value.copyWith(rental: value));
    });
  }
}

/// @nodoc

class _$InitImpl implements _Init {
  const _$InitImpl({required this.rental});

  @override
  final Rental? rental;

  @override
  String toString() {
    return 'TimeTicketActorEvent.init(rental: $rental)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitImpl &&
            (identical(other.rental, rental) || other.rental == rental));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rental);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      __$$InitImplCopyWithImpl<_$InitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental? rental) init,
    required TResult Function(DateTime? startAt) setStartAt,
    required TResult Function(DateTime? endAt) setEndAt,
    required TResult Function() selectAdultButton,
    required TResult Function() getTiemTickets,
    required TResult Function(TimeTicket timeTicket) selectTimeTicket,
  }) {
    return init(rental);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental? rental)? init,
    TResult? Function(DateTime? startAt)? setStartAt,
    TResult? Function(DateTime? endAt)? setEndAt,
    TResult? Function()? selectAdultButton,
    TResult? Function()? getTiemTickets,
    TResult? Function(TimeTicket timeTicket)? selectTimeTicket,
  }) {
    return init?.call(rental);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental? rental)? init,
    TResult Function(DateTime? startAt)? setStartAt,
    TResult Function(DateTime? endAt)? setEndAt,
    TResult Function()? selectAdultButton,
    TResult Function()? getTiemTickets,
    TResult Function(TimeTicket timeTicket)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(rental);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetStartAt value) setStartAt,
    required TResult Function(_SetEndAt value) setEndAt,
    required TResult Function(_SelectAdultButton value) selectAdultButton,
    required TResult Function(_GetTiemTickets value) getTiemTickets,
    required TResult Function(_SelectTimeTicket value) selectTimeTicket,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetStartAt value)? setStartAt,
    TResult? Function(_SetEndAt value)? setEndAt,
    TResult? Function(_SelectAdultButton value)? selectAdultButton,
    TResult? Function(_GetTiemTickets value)? getTiemTickets,
    TResult? Function(_SelectTimeTicket value)? selectTimeTicket,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetStartAt value)? setStartAt,
    TResult Function(_SetEndAt value)? setEndAt,
    TResult Function(_SelectAdultButton value)? selectAdultButton,
    TResult Function(_GetTiemTickets value)? getTiemTickets,
    TResult Function(_SelectTimeTicket value)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements TimeTicketActorEvent {
  const factory _Init({required final Rental? rental}) = _$InitImpl;

  Rental? get rental;

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitImplCopyWith<_$InitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetStartAtImplCopyWith<$Res> {
  factory _$$SetStartAtImplCopyWith(
          _$SetStartAtImpl value, $Res Function(_$SetStartAtImpl) then) =
      __$$SetStartAtImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? startAt});
}

/// @nodoc
class __$$SetStartAtImplCopyWithImpl<$Res>
    extends _$TimeTicketActorEventCopyWithImpl<$Res, _$SetStartAtImpl>
    implements _$$SetStartAtImplCopyWith<$Res> {
  __$$SetStartAtImplCopyWithImpl(
      _$SetStartAtImpl _value, $Res Function(_$SetStartAtImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startAt = freezed,
  }) {
    return _then(_$SetStartAtImpl(
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$SetStartAtImpl implements _SetStartAt {
  const _$SetStartAtImpl({required this.startAt});

  @override
  final DateTime? startAt;

  @override
  String toString() {
    return 'TimeTicketActorEvent.setStartAt(startAt: $startAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetStartAtImpl &&
            (identical(other.startAt, startAt) || other.startAt == startAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, startAt);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetStartAtImplCopyWith<_$SetStartAtImpl> get copyWith =>
      __$$SetStartAtImplCopyWithImpl<_$SetStartAtImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental? rental) init,
    required TResult Function(DateTime? startAt) setStartAt,
    required TResult Function(DateTime? endAt) setEndAt,
    required TResult Function() selectAdultButton,
    required TResult Function() getTiemTickets,
    required TResult Function(TimeTicket timeTicket) selectTimeTicket,
  }) {
    return setStartAt(startAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental? rental)? init,
    TResult? Function(DateTime? startAt)? setStartAt,
    TResult? Function(DateTime? endAt)? setEndAt,
    TResult? Function()? selectAdultButton,
    TResult? Function()? getTiemTickets,
    TResult? Function(TimeTicket timeTicket)? selectTimeTicket,
  }) {
    return setStartAt?.call(startAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental? rental)? init,
    TResult Function(DateTime? startAt)? setStartAt,
    TResult Function(DateTime? endAt)? setEndAt,
    TResult Function()? selectAdultButton,
    TResult Function()? getTiemTickets,
    TResult Function(TimeTicket timeTicket)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (setStartAt != null) {
      return setStartAt(startAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetStartAt value) setStartAt,
    required TResult Function(_SetEndAt value) setEndAt,
    required TResult Function(_SelectAdultButton value) selectAdultButton,
    required TResult Function(_GetTiemTickets value) getTiemTickets,
    required TResult Function(_SelectTimeTicket value) selectTimeTicket,
  }) {
    return setStartAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetStartAt value)? setStartAt,
    TResult? Function(_SetEndAt value)? setEndAt,
    TResult? Function(_SelectAdultButton value)? selectAdultButton,
    TResult? Function(_GetTiemTickets value)? getTiemTickets,
    TResult? Function(_SelectTimeTicket value)? selectTimeTicket,
  }) {
    return setStartAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetStartAt value)? setStartAt,
    TResult Function(_SetEndAt value)? setEndAt,
    TResult Function(_SelectAdultButton value)? selectAdultButton,
    TResult Function(_GetTiemTickets value)? getTiemTickets,
    TResult Function(_SelectTimeTicket value)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (setStartAt != null) {
      return setStartAt(this);
    }
    return orElse();
  }
}

abstract class _SetStartAt implements TimeTicketActorEvent {
  const factory _SetStartAt({required final DateTime? startAt}) =
      _$SetStartAtImpl;

  DateTime? get startAt;

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetStartAtImplCopyWith<_$SetStartAtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetEndAtImplCopyWith<$Res> {
  factory _$$SetEndAtImplCopyWith(
          _$SetEndAtImpl value, $Res Function(_$SetEndAtImpl) then) =
      __$$SetEndAtImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime? endAt});
}

/// @nodoc
class __$$SetEndAtImplCopyWithImpl<$Res>
    extends _$TimeTicketActorEventCopyWithImpl<$Res, _$SetEndAtImpl>
    implements _$$SetEndAtImplCopyWith<$Res> {
  __$$SetEndAtImplCopyWithImpl(
      _$SetEndAtImpl _value, $Res Function(_$SetEndAtImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endAt = freezed,
  }) {
    return _then(_$SetEndAtImpl(
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$SetEndAtImpl implements _SetEndAt {
  const _$SetEndAtImpl({required this.endAt});

  @override
  final DateTime? endAt;

  @override
  String toString() {
    return 'TimeTicketActorEvent.setEndAt(endAt: $endAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetEndAtImpl &&
            (identical(other.endAt, endAt) || other.endAt == endAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, endAt);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetEndAtImplCopyWith<_$SetEndAtImpl> get copyWith =>
      __$$SetEndAtImplCopyWithImpl<_$SetEndAtImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental? rental) init,
    required TResult Function(DateTime? startAt) setStartAt,
    required TResult Function(DateTime? endAt) setEndAt,
    required TResult Function() selectAdultButton,
    required TResult Function() getTiemTickets,
    required TResult Function(TimeTicket timeTicket) selectTimeTicket,
  }) {
    return setEndAt(endAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental? rental)? init,
    TResult? Function(DateTime? startAt)? setStartAt,
    TResult? Function(DateTime? endAt)? setEndAt,
    TResult? Function()? selectAdultButton,
    TResult? Function()? getTiemTickets,
    TResult? Function(TimeTicket timeTicket)? selectTimeTicket,
  }) {
    return setEndAt?.call(endAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental? rental)? init,
    TResult Function(DateTime? startAt)? setStartAt,
    TResult Function(DateTime? endAt)? setEndAt,
    TResult Function()? selectAdultButton,
    TResult Function()? getTiemTickets,
    TResult Function(TimeTicket timeTicket)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (setEndAt != null) {
      return setEndAt(endAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetStartAt value) setStartAt,
    required TResult Function(_SetEndAt value) setEndAt,
    required TResult Function(_SelectAdultButton value) selectAdultButton,
    required TResult Function(_GetTiemTickets value) getTiemTickets,
    required TResult Function(_SelectTimeTicket value) selectTimeTicket,
  }) {
    return setEndAt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetStartAt value)? setStartAt,
    TResult? Function(_SetEndAt value)? setEndAt,
    TResult? Function(_SelectAdultButton value)? selectAdultButton,
    TResult? Function(_GetTiemTickets value)? getTiemTickets,
    TResult? Function(_SelectTimeTicket value)? selectTimeTicket,
  }) {
    return setEndAt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetStartAt value)? setStartAt,
    TResult Function(_SetEndAt value)? setEndAt,
    TResult Function(_SelectAdultButton value)? selectAdultButton,
    TResult Function(_GetTiemTickets value)? getTiemTickets,
    TResult Function(_SelectTimeTicket value)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (setEndAt != null) {
      return setEndAt(this);
    }
    return orElse();
  }
}

abstract class _SetEndAt implements TimeTicketActorEvent {
  const factory _SetEndAt({required final DateTime? endAt}) = _$SetEndAtImpl;

  DateTime? get endAt;

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetEndAtImplCopyWith<_$SetEndAtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectAdultButtonImplCopyWith<$Res> {
  factory _$$SelectAdultButtonImplCopyWith(_$SelectAdultButtonImpl value,
          $Res Function(_$SelectAdultButtonImpl) then) =
      __$$SelectAdultButtonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectAdultButtonImplCopyWithImpl<$Res>
    extends _$TimeTicketActorEventCopyWithImpl<$Res, _$SelectAdultButtonImpl>
    implements _$$SelectAdultButtonImplCopyWith<$Res> {
  __$$SelectAdultButtonImplCopyWithImpl(_$SelectAdultButtonImpl _value,
      $Res Function(_$SelectAdultButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SelectAdultButtonImpl implements _SelectAdultButton {
  const _$SelectAdultButtonImpl();

  @override
  String toString() {
    return 'TimeTicketActorEvent.selectAdultButton()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectAdultButtonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental? rental) init,
    required TResult Function(DateTime? startAt) setStartAt,
    required TResult Function(DateTime? endAt) setEndAt,
    required TResult Function() selectAdultButton,
    required TResult Function() getTiemTickets,
    required TResult Function(TimeTicket timeTicket) selectTimeTicket,
  }) {
    return selectAdultButton();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental? rental)? init,
    TResult? Function(DateTime? startAt)? setStartAt,
    TResult? Function(DateTime? endAt)? setEndAt,
    TResult? Function()? selectAdultButton,
    TResult? Function()? getTiemTickets,
    TResult? Function(TimeTicket timeTicket)? selectTimeTicket,
  }) {
    return selectAdultButton?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental? rental)? init,
    TResult Function(DateTime? startAt)? setStartAt,
    TResult Function(DateTime? endAt)? setEndAt,
    TResult Function()? selectAdultButton,
    TResult Function()? getTiemTickets,
    TResult Function(TimeTicket timeTicket)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (selectAdultButton != null) {
      return selectAdultButton();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetStartAt value) setStartAt,
    required TResult Function(_SetEndAt value) setEndAt,
    required TResult Function(_SelectAdultButton value) selectAdultButton,
    required TResult Function(_GetTiemTickets value) getTiemTickets,
    required TResult Function(_SelectTimeTicket value) selectTimeTicket,
  }) {
    return selectAdultButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetStartAt value)? setStartAt,
    TResult? Function(_SetEndAt value)? setEndAt,
    TResult? Function(_SelectAdultButton value)? selectAdultButton,
    TResult? Function(_GetTiemTickets value)? getTiemTickets,
    TResult? Function(_SelectTimeTicket value)? selectTimeTicket,
  }) {
    return selectAdultButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetStartAt value)? setStartAt,
    TResult Function(_SetEndAt value)? setEndAt,
    TResult Function(_SelectAdultButton value)? selectAdultButton,
    TResult Function(_GetTiemTickets value)? getTiemTickets,
    TResult Function(_SelectTimeTicket value)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (selectAdultButton != null) {
      return selectAdultButton(this);
    }
    return orElse();
  }
}

abstract class _SelectAdultButton implements TimeTicketActorEvent {
  const factory _SelectAdultButton() = _$SelectAdultButtonImpl;
}

/// @nodoc
abstract class _$$GetTiemTicketsImplCopyWith<$Res> {
  factory _$$GetTiemTicketsImplCopyWith(_$GetTiemTicketsImpl value,
          $Res Function(_$GetTiemTicketsImpl) then) =
      __$$GetTiemTicketsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTiemTicketsImplCopyWithImpl<$Res>
    extends _$TimeTicketActorEventCopyWithImpl<$Res, _$GetTiemTicketsImpl>
    implements _$$GetTiemTicketsImplCopyWith<$Res> {
  __$$GetTiemTicketsImplCopyWithImpl(
      _$GetTiemTicketsImpl _value, $Res Function(_$GetTiemTicketsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTiemTicketsImpl implements _GetTiemTickets {
  const _$GetTiemTicketsImpl();

  @override
  String toString() {
    return 'TimeTicketActorEvent.getTiemTickets()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTiemTicketsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental? rental) init,
    required TResult Function(DateTime? startAt) setStartAt,
    required TResult Function(DateTime? endAt) setEndAt,
    required TResult Function() selectAdultButton,
    required TResult Function() getTiemTickets,
    required TResult Function(TimeTicket timeTicket) selectTimeTicket,
  }) {
    return getTiemTickets();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental? rental)? init,
    TResult? Function(DateTime? startAt)? setStartAt,
    TResult? Function(DateTime? endAt)? setEndAt,
    TResult? Function()? selectAdultButton,
    TResult? Function()? getTiemTickets,
    TResult? Function(TimeTicket timeTicket)? selectTimeTicket,
  }) {
    return getTiemTickets?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental? rental)? init,
    TResult Function(DateTime? startAt)? setStartAt,
    TResult Function(DateTime? endAt)? setEndAt,
    TResult Function()? selectAdultButton,
    TResult Function()? getTiemTickets,
    TResult Function(TimeTicket timeTicket)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (getTiemTickets != null) {
      return getTiemTickets();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetStartAt value) setStartAt,
    required TResult Function(_SetEndAt value) setEndAt,
    required TResult Function(_SelectAdultButton value) selectAdultButton,
    required TResult Function(_GetTiemTickets value) getTiemTickets,
    required TResult Function(_SelectTimeTicket value) selectTimeTicket,
  }) {
    return getTiemTickets(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetStartAt value)? setStartAt,
    TResult? Function(_SetEndAt value)? setEndAt,
    TResult? Function(_SelectAdultButton value)? selectAdultButton,
    TResult? Function(_GetTiemTickets value)? getTiemTickets,
    TResult? Function(_SelectTimeTicket value)? selectTimeTicket,
  }) {
    return getTiemTickets?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetStartAt value)? setStartAt,
    TResult Function(_SetEndAt value)? setEndAt,
    TResult Function(_SelectAdultButton value)? selectAdultButton,
    TResult Function(_GetTiemTickets value)? getTiemTickets,
    TResult Function(_SelectTimeTicket value)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (getTiemTickets != null) {
      return getTiemTickets(this);
    }
    return orElse();
  }
}

abstract class _GetTiemTickets implements TimeTicketActorEvent {
  const factory _GetTiemTickets() = _$GetTiemTicketsImpl;
}

/// @nodoc
abstract class _$$SelectTimeTicketImplCopyWith<$Res> {
  factory _$$SelectTimeTicketImplCopyWith(_$SelectTimeTicketImpl value,
          $Res Function(_$SelectTimeTicketImpl) then) =
      __$$SelectTimeTicketImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TimeTicket timeTicket});

  $TimeTicketCopyWith<$Res> get timeTicket;
}

/// @nodoc
class __$$SelectTimeTicketImplCopyWithImpl<$Res>
    extends _$TimeTicketActorEventCopyWithImpl<$Res, _$SelectTimeTicketImpl>
    implements _$$SelectTimeTicketImplCopyWith<$Res> {
  __$$SelectTimeTicketImplCopyWithImpl(_$SelectTimeTicketImpl _value,
      $Res Function(_$SelectTimeTicketImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeTicket = null,
  }) {
    return _then(_$SelectTimeTicketImpl(
      timeTicket: null == timeTicket
          ? _value.timeTicket
          : timeTicket // ignore: cast_nullable_to_non_nullable
              as TimeTicket,
    ));
  }

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeTicketCopyWith<$Res> get timeTicket {
    return $TimeTicketCopyWith<$Res>(_value.timeTicket, (value) {
      return _then(_value.copyWith(timeTicket: value));
    });
  }
}

/// @nodoc

class _$SelectTimeTicketImpl implements _SelectTimeTicket {
  const _$SelectTimeTicketImpl({required this.timeTicket});

  @override
  final TimeTicket timeTicket;

  @override
  String toString() {
    return 'TimeTicketActorEvent.selectTimeTicket(timeTicket: $timeTicket)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTimeTicketImpl &&
            (identical(other.timeTicket, timeTicket) ||
                other.timeTicket == timeTicket));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeTicket);

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTimeTicketImplCopyWith<_$SelectTimeTicketImpl> get copyWith =>
      __$$SelectTimeTicketImplCopyWithImpl<_$SelectTimeTicketImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Rental? rental) init,
    required TResult Function(DateTime? startAt) setStartAt,
    required TResult Function(DateTime? endAt) setEndAt,
    required TResult Function() selectAdultButton,
    required TResult Function() getTiemTickets,
    required TResult Function(TimeTicket timeTicket) selectTimeTicket,
  }) {
    return selectTimeTicket(timeTicket);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Rental? rental)? init,
    TResult? Function(DateTime? startAt)? setStartAt,
    TResult? Function(DateTime? endAt)? setEndAt,
    TResult? Function()? selectAdultButton,
    TResult? Function()? getTiemTickets,
    TResult? Function(TimeTicket timeTicket)? selectTimeTicket,
  }) {
    return selectTimeTicket?.call(timeTicket);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Rental? rental)? init,
    TResult Function(DateTime? startAt)? setStartAt,
    TResult Function(DateTime? endAt)? setEndAt,
    TResult Function()? selectAdultButton,
    TResult Function()? getTiemTickets,
    TResult Function(TimeTicket timeTicket)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (selectTimeTicket != null) {
      return selectTimeTicket(timeTicket);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_SetStartAt value) setStartAt,
    required TResult Function(_SetEndAt value) setEndAt,
    required TResult Function(_SelectAdultButton value) selectAdultButton,
    required TResult Function(_GetTiemTickets value) getTiemTickets,
    required TResult Function(_SelectTimeTicket value) selectTimeTicket,
  }) {
    return selectTimeTicket(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_SetStartAt value)? setStartAt,
    TResult? Function(_SetEndAt value)? setEndAt,
    TResult? Function(_SelectAdultButton value)? selectAdultButton,
    TResult? Function(_GetTiemTickets value)? getTiemTickets,
    TResult? Function(_SelectTimeTicket value)? selectTimeTicket,
  }) {
    return selectTimeTicket?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_SetStartAt value)? setStartAt,
    TResult Function(_SetEndAt value)? setEndAt,
    TResult Function(_SelectAdultButton value)? selectAdultButton,
    TResult Function(_GetTiemTickets value)? getTiemTickets,
    TResult Function(_SelectTimeTicket value)? selectTimeTicket,
    required TResult orElse(),
  }) {
    if (selectTimeTicket != null) {
      return selectTimeTicket(this);
    }
    return orElse();
  }
}

abstract class _SelectTimeTicket implements TimeTicketActorEvent {
  const factory _SelectTimeTicket({required final TimeTicket timeTicket}) =
      _$SelectTimeTicketImpl;

  TimeTicket get timeTicket;

  /// Create a copy of TimeTicketActorEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectTimeTicketImplCopyWith<_$SelectTimeTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TimeTicketActorState {
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DefaultStatus get status => throw _privateConstructorUsedError;
  UpdateStatus get updateStatus => throw _privateConstructorUsedError;
  DateTime? get startAt => throw _privateConstructorUsedError;
  DateTime? get endAt => throw _privateConstructorUsedError;
  List<DateTimeTickets> get dateTimeTickets =>
      throw _privateConstructorUsedError;
  Rental? get rental => throw _privateConstructorUsedError;
  bool get isAdult => throw _privateConstructorUsedError;
  bool get isValidPeriod => throw _privateConstructorUsedError;

  /// Create a copy of TimeTicketActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeTicketActorStateCopyWith<TimeTicketActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeTicketActorStateCopyWith<$Res> {
  factory $TimeTicketActorStateCopyWith(TimeTicketActorState value,
          $Res Function(TimeTicketActorState) then) =
      _$TimeTicketActorStateCopyWithImpl<$Res, TimeTicketActorState>;
  @useResult
  $Res call(
      {DateTime updatedAt,
      DefaultStatus status,
      UpdateStatus updateStatus,
      DateTime? startAt,
      DateTime? endAt,
      List<DateTimeTickets> dateTimeTickets,
      Rental? rental,
      bool isAdult,
      bool isValidPeriod});

  $RentalCopyWith<$Res>? get rental;
}

/// @nodoc
class _$TimeTicketActorStateCopyWithImpl<$Res,
        $Val extends TimeTicketActorState>
    implements $TimeTicketActorStateCopyWith<$Res> {
  _$TimeTicketActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeTicketActorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
    Object? status = null,
    Object? updateStatus = null,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? dateTimeTickets = null,
    Object? rental = freezed,
    Object? isAdult = null,
    Object? isValidPeriod = null,
  }) {
    return _then(_value.copyWith(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as UpdateStatus,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTimeTickets: null == dateTimeTickets
          ? _value.dateTimeTickets
          : dateTimeTickets // ignore: cast_nullable_to_non_nullable
              as List<DateTimeTickets>,
      rental: freezed == rental
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental?,
      isAdult: null == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidPeriod: null == isValidPeriod
          ? _value.isValidPeriod
          : isValidPeriod // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of TimeTicketActorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RentalCopyWith<$Res>? get rental {
    if (_value.rental == null) {
      return null;
    }

    return $RentalCopyWith<$Res>(_value.rental!, (value) {
      return _then(_value.copyWith(rental: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TimeTicketActorStateImplCopyWith<$Res>
    implements $TimeTicketActorStateCopyWith<$Res> {
  factory _$$TimeTicketActorStateImplCopyWith(_$TimeTicketActorStateImpl value,
          $Res Function(_$TimeTicketActorStateImpl) then) =
      __$$TimeTicketActorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime updatedAt,
      DefaultStatus status,
      UpdateStatus updateStatus,
      DateTime? startAt,
      DateTime? endAt,
      List<DateTimeTickets> dateTimeTickets,
      Rental? rental,
      bool isAdult,
      bool isValidPeriod});

  @override
  $RentalCopyWith<$Res>? get rental;
}

/// @nodoc
class __$$TimeTicketActorStateImplCopyWithImpl<$Res>
    extends _$TimeTicketActorStateCopyWithImpl<$Res, _$TimeTicketActorStateImpl>
    implements _$$TimeTicketActorStateImplCopyWith<$Res> {
  __$$TimeTicketActorStateImplCopyWithImpl(_$TimeTicketActorStateImpl _value,
      $Res Function(_$TimeTicketActorStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeTicketActorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedAt = null,
    Object? status = null,
    Object? updateStatus = null,
    Object? startAt = freezed,
    Object? endAt = freezed,
    Object? dateTimeTickets = null,
    Object? rental = freezed,
    Object? isAdult = null,
    Object? isValidPeriod = null,
  }) {
    return _then(_$TimeTicketActorStateImpl(
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      updateStatus: null == updateStatus
          ? _value.updateStatus
          : updateStatus // ignore: cast_nullable_to_non_nullable
              as UpdateStatus,
      startAt: freezed == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endAt: freezed == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      dateTimeTickets: null == dateTimeTickets
          ? _value._dateTimeTickets
          : dateTimeTickets // ignore: cast_nullable_to_non_nullable
              as List<DateTimeTickets>,
      rental: freezed == rental
          ? _value.rental
          : rental // ignore: cast_nullable_to_non_nullable
              as Rental?,
      isAdult: null == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidPeriod: null == isValidPeriod
          ? _value.isValidPeriod
          : isValidPeriod // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TimeTicketActorStateImpl implements _TimeTicketActorState {
  const _$TimeTicketActorStateImpl(
      {required this.updatedAt,
      required this.status,
      required this.updateStatus,
      required this.startAt,
      required this.endAt,
      required final List<DateTimeTickets> dateTimeTickets,
      required this.rental,
      required this.isAdult,
      required this.isValidPeriod})
      : _dateTimeTickets = dateTimeTickets;

  @override
  final DateTime updatedAt;
  @override
  final DefaultStatus status;
  @override
  final UpdateStatus updateStatus;
  @override
  final DateTime? startAt;
  @override
  final DateTime? endAt;
  final List<DateTimeTickets> _dateTimeTickets;
  @override
  List<DateTimeTickets> get dateTimeTickets {
    if (_dateTimeTickets is EqualUnmodifiableListView) return _dateTimeTickets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dateTimeTickets);
  }

  @override
  final Rental? rental;
  @override
  final bool isAdult;
  @override
  final bool isValidPeriod;

  @override
  String toString() {
    return 'TimeTicketActorState(updatedAt: $updatedAt, status: $status, updateStatus: $updateStatus, startAt: $startAt, endAt: $endAt, dateTimeTickets: $dateTimeTickets, rental: $rental, isAdult: $isAdult, isValidPeriod: $isValidPeriod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeTicketActorStateImpl &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updateStatus, updateStatus) ||
                other.updateStatus == updateStatus) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            const DeepCollectionEquality()
                .equals(other._dateTimeTickets, _dateTimeTickets) &&
            (identical(other.rental, rental) || other.rental == rental) &&
            (identical(other.isAdult, isAdult) || other.isAdult == isAdult) &&
            (identical(other.isValidPeriod, isValidPeriod) ||
                other.isValidPeriod == isValidPeriod));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      updatedAt,
      status,
      updateStatus,
      startAt,
      endAt,
      const DeepCollectionEquality().hash(_dateTimeTickets),
      rental,
      isAdult,
      isValidPeriod);

  /// Create a copy of TimeTicketActorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeTicketActorStateImplCopyWith<_$TimeTicketActorStateImpl>
      get copyWith =>
          __$$TimeTicketActorStateImplCopyWithImpl<_$TimeTicketActorStateImpl>(
              this, _$identity);
}

abstract class _TimeTicketActorState implements TimeTicketActorState {
  const factory _TimeTicketActorState(
      {required final DateTime updatedAt,
      required final DefaultStatus status,
      required final UpdateStatus updateStatus,
      required final DateTime? startAt,
      required final DateTime? endAt,
      required final List<DateTimeTickets> dateTimeTickets,
      required final Rental? rental,
      required final bool isAdult,
      required final bool isValidPeriod}) = _$TimeTicketActorStateImpl;

  @override
  DateTime get updatedAt;
  @override
  DefaultStatus get status;
  @override
  UpdateStatus get updateStatus;
  @override
  DateTime? get startAt;
  @override
  DateTime? get endAt;
  @override
  List<DateTimeTickets> get dateTimeTickets;
  @override
  Rental? get rental;
  @override
  bool get isAdult;
  @override
  bool get isValidPeriod;

  /// Create a copy of TimeTicketActorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeTicketActorStateImplCopyWith<_$TimeTicketActorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidingListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRidingRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRidingRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRidingRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRidingRooms value) getRidingRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRidingRooms value)? getRidingRooms,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRidingRooms value)? getRidingRooms,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingListEventCopyWith<$Res> {
  factory $RidingListEventCopyWith(
          RidingListEvent value, $Res Function(RidingListEvent) then) =
      _$RidingListEventCopyWithImpl<$Res, RidingListEvent>;
}

/// @nodoc
class _$RidingListEventCopyWithImpl<$Res, $Val extends RidingListEvent>
    implements $RidingListEventCopyWith<$Res> {
  _$RidingListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetRidingRoomsCopyWith<$Res> {
  factory _$$_GetRidingRoomsCopyWith(
          _$_GetRidingRooms value, $Res Function(_$_GetRidingRooms) then) =
      __$$_GetRidingRoomsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRidingRoomsCopyWithImpl<$Res>
    extends _$RidingListEventCopyWithImpl<$Res, _$_GetRidingRooms>
    implements _$$_GetRidingRoomsCopyWith<$Res> {
  __$$_GetRidingRoomsCopyWithImpl(
      _$_GetRidingRooms _value, $Res Function(_$_GetRidingRooms) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRidingRooms implements _GetRidingRooms {
  const _$_GetRidingRooms();

  @override
  String toString() {
    return 'RidingListEvent.getRidingRooms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRidingRooms);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRidingRooms,
  }) {
    return getRidingRooms();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRidingRooms,
  }) {
    return getRidingRooms?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRidingRooms,
    required TResult orElse(),
  }) {
    if (getRidingRooms != null) {
      return getRidingRooms();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRidingRooms value) getRidingRooms,
  }) {
    return getRidingRooms(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRidingRooms value)? getRidingRooms,
  }) {
    return getRidingRooms?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRidingRooms value)? getRidingRooms,
    required TResult orElse(),
  }) {
    if (getRidingRooms != null) {
      return getRidingRooms(this);
    }
    return orElse();
  }
}

abstract class _GetRidingRooms implements RidingListEvent {
  const factory _GetRidingRooms() = _$_GetRidingRooms;
}

/// @nodoc
mixin _$RidingListState {
  DefaultStatus get status => throw _privateConstructorUsedError;
  List<RidingRoom> get ridingRooms => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingListStateCopyWith<RidingListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingListStateCopyWith<$Res> {
  factory $RidingListStateCopyWith(
          RidingListState value, $Res Function(RidingListState) then) =
      _$RidingListStateCopyWithImpl<$Res, RidingListState>;
  @useResult
  $Res call({DefaultStatus status, List<RidingRoom> ridingRooms});
}

/// @nodoc
class _$RidingListStateCopyWithImpl<$Res, $Val extends RidingListState>
    implements $RidingListStateCopyWith<$Res> {
  _$RidingListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ridingRooms = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      ridingRooms: null == ridingRooms
          ? _value.ridingRooms
          : ridingRooms // ignore: cast_nullable_to_non_nullable
              as List<RidingRoom>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RidingListStateCopyWith<$Res>
    implements $RidingListStateCopyWith<$Res> {
  factory _$$_RidingListStateCopyWith(
          _$_RidingListState value, $Res Function(_$_RidingListState) then) =
      __$$_RidingListStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DefaultStatus status, List<RidingRoom> ridingRooms});
}

/// @nodoc
class __$$_RidingListStateCopyWithImpl<$Res>
    extends _$RidingListStateCopyWithImpl<$Res, _$_RidingListState>
    implements _$$_RidingListStateCopyWith<$Res> {
  __$$_RidingListStateCopyWithImpl(
      _$_RidingListState _value, $Res Function(_$_RidingListState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? ridingRooms = null,
  }) {
    return _then(_$_RidingListState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DefaultStatus,
      ridingRooms: null == ridingRooms
          ? _value._ridingRooms
          : ridingRooms // ignore: cast_nullable_to_non_nullable
              as List<RidingRoom>,
    ));
  }
}

/// @nodoc

class _$_RidingListState implements _RidingListState {
  const _$_RidingListState(
      {required this.status, required final List<RidingRoom> ridingRooms})
      : _ridingRooms = ridingRooms;

  @override
  final DefaultStatus status;
  final List<RidingRoom> _ridingRooms;
  @override
  List<RidingRoom> get ridingRooms {
    if (_ridingRooms is EqualUnmodifiableListView) return _ridingRooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ridingRooms);
  }

  @override
  String toString() {
    return 'RidingListState(status: $status, ridingRooms: $ridingRooms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RidingListState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._ridingRooms, _ridingRooms));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_ridingRooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RidingListStateCopyWith<_$_RidingListState> get copyWith =>
      __$$_RidingListStateCopyWithImpl<_$_RidingListState>(this, _$identity);
}

abstract class _RidingListState implements RidingListState {
  const factory _RidingListState(
      {required final DefaultStatus status,
      required final List<RidingRoom> ridingRooms}) = _$_RidingListState;

  @override
  DefaultStatus get status;
  @override
  List<RidingRoom> get ridingRooms;
  @override
  @JsonKey(ignore: true)
  _$$_RidingListStateCopyWith<_$_RidingListState> get copyWith =>
      throw _privateConstructorUsedError;
}

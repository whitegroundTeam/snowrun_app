// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'riding_rooms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RidingRooms {
  ListVO<RidingRoom> get ridingRooms => throw _privateConstructorUsedError;
  IntVO get count => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RidingRoomsCopyWith<RidingRooms> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RidingRoomsCopyWith<$Res> {
  factory $RidingRoomsCopyWith(
          RidingRooms value, $Res Function(RidingRooms) then) =
      _$RidingRoomsCopyWithImpl<$Res, RidingRooms>;
  @useResult
  $Res call({ListVO<RidingRoom> ridingRooms, IntVO count});
}

/// @nodoc
class _$RidingRoomsCopyWithImpl<$Res, $Val extends RidingRooms>
    implements $RidingRoomsCopyWith<$Res> {
  _$RidingRoomsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRooms = null,
    Object? count = null,
  }) {
    return _then(_value.copyWith(
      ridingRooms: null == ridingRooms
          ? _value.ridingRooms
          : ridingRooms // ignore: cast_nullable_to_non_nullable
              as ListVO<RidingRoom>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as IntVO,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RidingRoomsCopyWith<$Res>
    implements $RidingRoomsCopyWith<$Res> {
  factory _$$_RidingRoomsCopyWith(
          _$_RidingRooms value, $Res Function(_$_RidingRooms) then) =
      __$$_RidingRoomsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ListVO<RidingRoom> ridingRooms, IntVO count});
}

/// @nodoc
class __$$_RidingRoomsCopyWithImpl<$Res>
    extends _$RidingRoomsCopyWithImpl<$Res, _$_RidingRooms>
    implements _$$_RidingRoomsCopyWith<$Res> {
  __$$_RidingRoomsCopyWithImpl(
      _$_RidingRooms _value, $Res Function(_$_RidingRooms) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ridingRooms = null,
    Object? count = null,
  }) {
    return _then(_$_RidingRooms(
      ridingRooms: null == ridingRooms
          ? _value.ridingRooms
          : ridingRooms // ignore: cast_nullable_to_non_nullable
              as ListVO<RidingRoom>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as IntVO,
    ));
  }
}

/// @nodoc

class _$_RidingRooms extends _RidingRooms {
  const _$_RidingRooms({required this.ridingRooms, required this.count})
      : super._();

  @override
  final ListVO<RidingRoom> ridingRooms;
  @override
  final IntVO count;

  @override
  String toString() {
    return 'RidingRooms(ridingRooms: $ridingRooms, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RidingRooms &&
            (identical(other.ridingRooms, ridingRooms) ||
                other.ridingRooms == ridingRooms) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ridingRooms, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RidingRoomsCopyWith<_$_RidingRooms> get copyWith =>
      __$$_RidingRoomsCopyWithImpl<_$_RidingRooms>(this, _$identity);
}

abstract class _RidingRooms extends RidingRooms {
  const factory _RidingRooms(
      {required final ListVO<RidingRoom> ridingRooms,
      required final IntVO count}) = _$_RidingRooms;
  const _RidingRooms._() : super._();

  @override
  ListVO<RidingRoom> get ridingRooms;
  @override
  IntVO get count;
  @override
  @JsonKey(ignore: true)
  _$$_RidingRoomsCopyWith<_$_RidingRooms> get copyWith =>
      throw _privateConstructorUsedError;
}

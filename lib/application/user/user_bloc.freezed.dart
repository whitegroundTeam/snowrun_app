// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng) updateCurrentLocation,
    required TResult Function(String token) savePushToken,
    required TResult Function(User user) saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng)? updateCurrentLocation,
    TResult? Function(String token)? savePushToken,
    TResult? Function(User user)? saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng)? updateCurrentLocation,
    TResult Function(String token)? savePushToken,
    TResult Function(User user)? saveUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCurrentLocation value)
        updateCurrentLocation,
    required TResult Function(_SavePushToken value) savePushToken,
    required TResult Function(_SaveUser value) saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    TResult? Function(_SavePushToken value)? savePushToken,
    TResult? Function(_SaveUser value)? saveUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    TResult Function(_SavePushToken value)? savePushToken,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UpdateCurrentLocationImplCopyWith<$Res> {
  factory _$$UpdateCurrentLocationImplCopyWith(
          _$UpdateCurrentLocationImpl value,
          $Res Function(_$UpdateCurrentLocationImpl) then) =
      __$$UpdateCurrentLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double lat, double lng});
}

/// @nodoc
class __$$UpdateCurrentLocationImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$UpdateCurrentLocationImpl>
    implements _$$UpdateCurrentLocationImplCopyWith<$Res> {
  __$$UpdateCurrentLocationImplCopyWithImpl(_$UpdateCurrentLocationImpl _value,
      $Res Function(_$UpdateCurrentLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lat = null,
    Object? lng = null,
  }) {
    return _then(_$UpdateCurrentLocationImpl(
      null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$UpdateCurrentLocationImpl implements _UpdateCurrentLocation {
  const _$UpdateCurrentLocationImpl(this.lat, this.lng);

  @override
  final double lat;
  @override
  final double lng;

  @override
  String toString() {
    return 'UserEvent.updateCurrentLocation(lat: $lat, lng: $lng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateCurrentLocationImpl &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lat, lng);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCurrentLocationImplCopyWith<_$UpdateCurrentLocationImpl>
      get copyWith => __$$UpdateCurrentLocationImplCopyWithImpl<
          _$UpdateCurrentLocationImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng) updateCurrentLocation,
    required TResult Function(String token) savePushToken,
    required TResult Function(User user) saveUser,
  }) {
    return updateCurrentLocation(lat, lng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng)? updateCurrentLocation,
    TResult? Function(String token)? savePushToken,
    TResult? Function(User user)? saveUser,
  }) {
    return updateCurrentLocation?.call(lat, lng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng)? updateCurrentLocation,
    TResult Function(String token)? savePushToken,
    TResult Function(User user)? saveUser,
    required TResult orElse(),
  }) {
    if (updateCurrentLocation != null) {
      return updateCurrentLocation(lat, lng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCurrentLocation value)
        updateCurrentLocation,
    required TResult Function(_SavePushToken value) savePushToken,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return updateCurrentLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    TResult? Function(_SavePushToken value)? savePushToken,
    TResult? Function(_SaveUser value)? saveUser,
  }) {
    return updateCurrentLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    TResult Function(_SavePushToken value)? savePushToken,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (updateCurrentLocation != null) {
      return updateCurrentLocation(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentLocation implements UserEvent {
  const factory _UpdateCurrentLocation(final double lat, final double lng) =
      _$UpdateCurrentLocationImpl;

  double get lat;
  double get lng;
  @JsonKey(ignore: true)
  _$$UpdateCurrentLocationImplCopyWith<_$UpdateCurrentLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavePushTokenImplCopyWith<$Res> {
  factory _$$SavePushTokenImplCopyWith(
          _$SavePushTokenImpl value, $Res Function(_$SavePushTokenImpl) then) =
      __$$SavePushTokenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String token});
}

/// @nodoc
class __$$SavePushTokenImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SavePushTokenImpl>
    implements _$$SavePushTokenImplCopyWith<$Res> {
  __$$SavePushTokenImplCopyWithImpl(
      _$SavePushTokenImpl _value, $Res Function(_$SavePushTokenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$SavePushTokenImpl(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SavePushTokenImpl implements _SavePushToken {
  const _$SavePushTokenImpl(this.token);

  @override
  final String token;

  @override
  String toString() {
    return 'UserEvent.savePushToken(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavePushTokenImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavePushTokenImplCopyWith<_$SavePushTokenImpl> get copyWith =>
      __$$SavePushTokenImplCopyWithImpl<_$SavePushTokenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng) updateCurrentLocation,
    required TResult Function(String token) savePushToken,
    required TResult Function(User user) saveUser,
  }) {
    return savePushToken(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng)? updateCurrentLocation,
    TResult? Function(String token)? savePushToken,
    TResult? Function(User user)? saveUser,
  }) {
    return savePushToken?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng)? updateCurrentLocation,
    TResult Function(String token)? savePushToken,
    TResult Function(User user)? saveUser,
    required TResult orElse(),
  }) {
    if (savePushToken != null) {
      return savePushToken(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCurrentLocation value)
        updateCurrentLocation,
    required TResult Function(_SavePushToken value) savePushToken,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return savePushToken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    TResult? Function(_SavePushToken value)? savePushToken,
    TResult? Function(_SaveUser value)? saveUser,
  }) {
    return savePushToken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    TResult Function(_SavePushToken value)? savePushToken,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (savePushToken != null) {
      return savePushToken(this);
    }
    return orElse();
  }
}

abstract class _SavePushToken implements UserEvent {
  const factory _SavePushToken(final String token) = _$SavePushTokenImpl;

  String get token;
  @JsonKey(ignore: true)
  _$$SavePushTokenImplCopyWith<_$SavePushTokenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveUserImplCopyWith<$Res> {
  factory _$$SaveUserImplCopyWith(
          _$SaveUserImpl value, $Res Function(_$SaveUserImpl) then) =
      __$$SaveUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$SaveUserImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$SaveUserImpl>
    implements _$$SaveUserImplCopyWith<$Res> {
  __$$SaveUserImplCopyWithImpl(
      _$SaveUserImpl _value, $Res Function(_$SaveUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SaveUserImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SaveUserImpl implements _SaveUser {
  const _$SaveUserImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'UserEvent.saveUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveUserImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveUserImplCopyWith<_$SaveUserImpl> get copyWith =>
      __$$SaveUserImplCopyWithImpl<_$SaveUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double lat, double lng) updateCurrentLocation,
    required TResult Function(String token) savePushToken,
    required TResult Function(User user) saveUser,
  }) {
    return saveUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double lat, double lng)? updateCurrentLocation,
    TResult? Function(String token)? savePushToken,
    TResult? Function(User user)? saveUser,
  }) {
    return saveUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double lat, double lng)? updateCurrentLocation,
    TResult Function(String token)? savePushToken,
    TResult Function(User user)? saveUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateCurrentLocation value)
        updateCurrentLocation,
    required TResult Function(_SavePushToken value) savePushToken,
    required TResult Function(_SaveUser value) saveUser,
  }) {
    return saveUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    TResult? Function(_SavePushToken value)? savePushToken,
    TResult? Function(_SaveUser value)? saveUser,
  }) {
    return saveUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateCurrentLocation value)? updateCurrentLocation,
    TResult Function(_SavePushToken value)? savePushToken,
    TResult Function(_SaveUser value)? saveUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(this);
    }
    return orElse();
  }
}

abstract class _SaveUser implements UserEvent {
  const factory _SaveUser(final User user) = _$SaveUserImpl;

  User get user;
  @JsonKey(ignore: true)
  _$$SaveUserImplCopyWith<_$SaveUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  UserStatus get status => throw _privateConstructorUsedError;
  List<User> get users => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({UserStatus status, List<User> users, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserStatus status, List<User> users, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? users = null,
    Object? user = freezed,
  }) {
    return _then(_$UserStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {required this.status,
      required final List<User> users,
      required this.user})
      : _users = users;

  @override
  final UserStatus status;
  final List<User> _users;
  @override
  List<User> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final User? user;

  @override
  String toString() {
    return 'UserState(status: $status, users: $users, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_users), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {required final UserStatus status,
      required final List<User> users,
      required final User? user}) = _$UserStateImpl;

  @override
  UserStatus get status;
  @override
  List<User> get users;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

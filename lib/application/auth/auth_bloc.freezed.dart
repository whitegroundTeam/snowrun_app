// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signWithGooglePressed,
    required TResult Function() signWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signWithGooglePressed,
    TResult? Function()? signWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signWithGooglePressed,
    TResult Function()? signWithApplePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignWithGooglePressed value)
        signWithGooglePressed,
    required TResult Function(_SignWithApplePressed value) signWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignWithGooglePressed value)? signWithGooglePressed,
    TResult? Function(_SignWithApplePressed value)? signWithApplePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignWithGooglePressed value)? signWithGooglePressed,
    TResult Function(_SignWithApplePressed value)? signWithApplePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SignWithGooglePressedCopyWith<$Res> {
  factory _$$_SignWithGooglePressedCopyWith(_$_SignWithGooglePressed value,
          $Res Function(_$_SignWithGooglePressed) then) =
      __$$_SignWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignWithGooglePressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignWithGooglePressed>
    implements _$$_SignWithGooglePressedCopyWith<$Res> {
  __$$_SignWithGooglePressedCopyWithImpl(_$_SignWithGooglePressed _value,
      $Res Function(_$_SignWithGooglePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignWithGooglePressed implements _SignWithGooglePressed {
  const _$_SignWithGooglePressed();

  @override
  String toString() {
    return 'AuthEvent.signWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signWithGooglePressed,
    required TResult Function() signWithApplePressed,
  }) {
    return signWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signWithGooglePressed,
    TResult? Function()? signWithApplePressed,
  }) {
    return signWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signWithGooglePressed,
    TResult Function()? signWithApplePressed,
    required TResult orElse(),
  }) {
    if (signWithGooglePressed != null) {
      return signWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignWithGooglePressed value)
        signWithGooglePressed,
    required TResult Function(_SignWithApplePressed value) signWithApplePressed,
  }) {
    return signWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignWithGooglePressed value)? signWithGooglePressed,
    TResult? Function(_SignWithApplePressed value)? signWithApplePressed,
  }) {
    return signWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignWithGooglePressed value)? signWithGooglePressed,
    TResult Function(_SignWithApplePressed value)? signWithApplePressed,
    required TResult orElse(),
  }) {
    if (signWithGooglePressed != null) {
      return signWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class _SignWithGooglePressed implements AuthEvent {
  const factory _SignWithGooglePressed() = _$_SignWithGooglePressed;
}

/// @nodoc
abstract class _$$_SignWithApplePressedCopyWith<$Res> {
  factory _$$_SignWithApplePressedCopyWith(_$_SignWithApplePressed value,
          $Res Function(_$_SignWithApplePressed) then) =
      __$$_SignWithApplePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignWithApplePressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignWithApplePressed>
    implements _$$_SignWithApplePressedCopyWith<$Res> {
  __$$_SignWithApplePressedCopyWithImpl(_$_SignWithApplePressed _value,
      $Res Function(_$_SignWithApplePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignWithApplePressed implements _SignWithApplePressed {
  const _$_SignWithApplePressed();

  @override
  String toString() {
    return 'AuthEvent.signWithApplePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignWithApplePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() signWithGooglePressed,
    required TResult Function() signWithApplePressed,
  }) {
    return signWithApplePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? signWithGooglePressed,
    TResult? Function()? signWithApplePressed,
  }) {
    return signWithApplePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? signWithGooglePressed,
    TResult Function()? signWithApplePressed,
    required TResult orElse(),
  }) {
    if (signWithApplePressed != null) {
      return signWithApplePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignWithGooglePressed value)
        signWithGooglePressed,
    required TResult Function(_SignWithApplePressed value) signWithApplePressed,
  }) {
    return signWithApplePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SignWithGooglePressed value)? signWithGooglePressed,
    TResult? Function(_SignWithApplePressed value)? signWithApplePressed,
  }) {
    return signWithApplePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignWithGooglePressed value)? signWithGooglePressed,
    TResult Function(_SignWithApplePressed value)? signWithApplePressed,
    required TResult orElse(),
  }) {
    if (signWithApplePressed != null) {
      return signWithApplePressed(this);
    }
    return orElse();
  }
}

abstract class _SignWithApplePressed implements AuthEvent {
  const factory _SignWithApplePressed() = _$_SignWithApplePressed;
}

/// @nodoc
mixin _$AuthState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, OauthSignResult>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  AuthStatus get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      Option<Either<AuthFailure, OauthSignResult>> authFailureOrSuccessOption,
      AuthStatus status,
      User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
    Object? status = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, OauthSignResult>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
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
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      Option<Either<AuthFailure, OauthSignResult>> authFailureOrSuccessOption,
      AuthStatus status,
      User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? authFailureOrSuccessOption = null,
    Object? status = null,
    Object? user = freezed,
  }) {
    return _then(_$_AuthState(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, OauthSignResult>>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.isSubmitting,
      required this.authFailureOrSuccessOption,
      required this.status,
      required this.user});

  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, OauthSignResult>> authFailureOrSuccessOption;
  @override
  final AuthStatus status;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState(isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption, status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isSubmitting, authFailureOrSuccessOption, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final bool isSubmitting,
      required final Option<Either<AuthFailure, OauthSignResult>>
          authFailureOrSuccessOption,
      required final AuthStatus status,
      required final User? user}) = _$_AuthState;

  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, OauthSignResult>> get authFailureOrSuccessOption;
  @override
  AuthStatus get status;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

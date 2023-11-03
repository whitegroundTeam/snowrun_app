// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_sign_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthSignResult {
  bool get isNewUser => throw _privateConstructorUsedError;
  AuthMethod get provider => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthSignResultCopyWith<AuthSignResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSignResultCopyWith<$Res> {
  factory $AuthSignResultCopyWith(
          AuthSignResult value, $Res Function(AuthSignResult) then) =
      _$AuthSignResultCopyWithImpl<$Res, AuthSignResult>;
  @useResult
  $Res call({bool isNewUser, AuthMethod provider});
}

/// @nodoc
class _$AuthSignResultCopyWithImpl<$Res, $Val extends AuthSignResult>
    implements $AuthSignResultCopyWith<$Res> {
  _$AuthSignResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNewUser = null,
    Object? provider = null,
  }) {
    return _then(_value.copyWith(
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthMethod,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthSignResultCopyWith<$Res>
    implements $AuthSignResultCopyWith<$Res> {
  factory _$$_AuthSignResultCopyWith(
          _$_AuthSignResult value, $Res Function(_$_AuthSignResult) then) =
      __$$_AuthSignResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isNewUser, AuthMethod provider});
}

/// @nodoc
class __$$_AuthSignResultCopyWithImpl<$Res>
    extends _$AuthSignResultCopyWithImpl<$Res, _$_AuthSignResult>
    implements _$$_AuthSignResultCopyWith<$Res> {
  __$$_AuthSignResultCopyWithImpl(
      _$_AuthSignResult _value, $Res Function(_$_AuthSignResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNewUser = null,
    Object? provider = null,
  }) {
    return _then(_$_AuthSignResult(
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as bool,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AuthMethod,
    ));
  }
}

/// @nodoc

class _$_AuthSignResult implements _AuthSignResult {
  const _$_AuthSignResult({required this.isNewUser, required this.provider});

  @override
  final bool isNewUser;
  @override
  final AuthMethod provider;

  @override
  String toString() {
    return 'AuthSignResult(isNewUser: $isNewUser, provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthSignResult &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser) &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNewUser, provider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthSignResultCopyWith<_$_AuthSignResult> get copyWith =>
      __$$_AuthSignResultCopyWithImpl<_$_AuthSignResult>(this, _$identity);
}

abstract class _AuthSignResult implements AuthSignResult {
  const factory _AuthSignResult(
      {required final bool isNewUser,
      required final AuthMethod provider}) = _$_AuthSignResult;

  @override
  bool get isNewUser;
  @override
  AuthMethod get provider;
  @override
  @JsonKey(ignore: true)
  _$$_AuthSignResultCopyWith<_$_AuthSignResult> get copyWith =>
      throw _privateConstructorUsedError;
}
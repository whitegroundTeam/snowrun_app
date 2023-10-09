// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'oauth_sign_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OauthSignResult {
  bool get isNewUser => throw _privateConstructorUsedError;
  AuthMethod get provider => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OauthSignResultCopyWith<OauthSignResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OauthSignResultCopyWith<$Res> {
  factory $OauthSignResultCopyWith(
          OauthSignResult value, $Res Function(OauthSignResult) then) =
      _$OauthSignResultCopyWithImpl<$Res, OauthSignResult>;
  @useResult
  $Res call({bool isNewUser, AuthMethod provider});
}

/// @nodoc
class _$OauthSignResultCopyWithImpl<$Res, $Val extends OauthSignResult>
    implements $OauthSignResultCopyWith<$Res> {
  _$OauthSignResultCopyWithImpl(this._value, this._then);

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
abstract class _$$_OauthSignResultCopyWith<$Res>
    implements $OauthSignResultCopyWith<$Res> {
  factory _$$_OauthSignResultCopyWith(
          _$_OauthSignResult value, $Res Function(_$_OauthSignResult) then) =
      __$$_OauthSignResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isNewUser, AuthMethod provider});
}

/// @nodoc
class __$$_OauthSignResultCopyWithImpl<$Res>
    extends _$OauthSignResultCopyWithImpl<$Res, _$_OauthSignResult>
    implements _$$_OauthSignResultCopyWith<$Res> {
  __$$_OauthSignResultCopyWithImpl(
      _$_OauthSignResult _value, $Res Function(_$_OauthSignResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isNewUser = null,
    Object? provider = null,
  }) {
    return _then(_$_OauthSignResult(
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

class _$_OauthSignResult implements _OauthSignResult {
  const _$_OauthSignResult({required this.isNewUser, required this.provider});

  @override
  final bool isNewUser;
  @override
  final AuthMethod provider;

  @override
  String toString() {
    return 'OauthSignResult(isNewUser: $isNewUser, provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OauthSignResult &&
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
  _$$_OauthSignResultCopyWith<_$_OauthSignResult> get copyWith =>
      __$$_OauthSignResultCopyWithImpl<_$_OauthSignResult>(this, _$identity);
}

abstract class _OauthSignResult implements OauthSignResult {
  const factory _OauthSignResult(
      {required final bool isNewUser,
      required final AuthMethod provider}) = _$_OauthSignResult;

  @override
  bool get isNewUser;
  @override
  AuthMethod get provider;
  @override
  @JsonKey(ignore: true)
  _$$_OauthSignResultCopyWith<_$_OauthSignResult> get copyWith =>
      throw _privateConstructorUsedError;
}

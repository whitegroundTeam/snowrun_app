// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignResponse {
  AuthToken get authToken => throw _privateConstructorUsedError;
  BooleanVO get isNewUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignResponseCopyWith<SignResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignResponseCopyWith<$Res> {
  factory $SignResponseCopyWith(
          SignResponse value, $Res Function(SignResponse) then) =
      _$SignResponseCopyWithImpl<$Res, SignResponse>;
  @useResult
  $Res call({AuthToken authToken, BooleanVO isNewUser});

  $AuthTokenCopyWith<$Res> get authToken;
}

/// @nodoc
class _$SignResponseCopyWithImpl<$Res, $Val extends SignResponse>
    implements $SignResponseCopyWith<$Res> {
  _$SignResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? isNewUser = null,
  }) {
    return _then(_value.copyWith(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as AuthToken,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthTokenCopyWith<$Res> get authToken {
    return $AuthTokenCopyWith<$Res>(_value.authToken, (value) {
      return _then(_value.copyWith(authToken: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignResponseImplCopyWith<$Res>
    implements $SignResponseCopyWith<$Res> {
  factory _$$SignResponseImplCopyWith(
          _$SignResponseImpl value, $Res Function(_$SignResponseImpl) then) =
      __$$SignResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthToken authToken, BooleanVO isNewUser});

  @override
  $AuthTokenCopyWith<$Res> get authToken;
}

/// @nodoc
class __$$SignResponseImplCopyWithImpl<$Res>
    extends _$SignResponseCopyWithImpl<$Res, _$SignResponseImpl>
    implements _$$SignResponseImplCopyWith<$Res> {
  __$$SignResponseImplCopyWithImpl(
      _$SignResponseImpl _value, $Res Function(_$SignResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authToken = null,
    Object? isNewUser = null,
  }) {
    return _then(_$SignResponseImpl(
      authToken: null == authToken
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as AuthToken,
      isNewUser: null == isNewUser
          ? _value.isNewUser
          : isNewUser // ignore: cast_nullable_to_non_nullable
              as BooleanVO,
    ));
  }
}

/// @nodoc

class _$SignResponseImpl extends _SignResponse {
  const _$SignResponseImpl({required this.authToken, required this.isNewUser})
      : super._();

  @override
  final AuthToken authToken;
  @override
  final BooleanVO isNewUser;

  @override
  String toString() {
    return 'SignResponse(authToken: $authToken, isNewUser: $isNewUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignResponseImpl &&
            (identical(other.authToken, authToken) ||
                other.authToken == authToken) &&
            (identical(other.isNewUser, isNewUser) ||
                other.isNewUser == isNewUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authToken, isNewUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignResponseImplCopyWith<_$SignResponseImpl> get copyWith =>
      __$$SignResponseImplCopyWithImpl<_$SignResponseImpl>(this, _$identity);
}

abstract class _SignResponse extends SignResponse {
  const factory _SignResponse(
      {required final AuthToken authToken,
      required final BooleanVO isNewUser}) = _$SignResponseImpl;
  const _SignResponse._() : super._();

  @override
  AuthToken get authToken;
  @override
  BooleanVO get isNewUser;
  @override
  @JsonKey(ignore: true)
  _$$SignResponseImplCopyWith<_$SignResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

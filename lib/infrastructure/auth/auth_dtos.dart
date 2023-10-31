import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/auth/auth_token.dart';
import 'package:snowrun_app/domain/auth/sign_response.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

part 'auth_dtos.freezed.dart';

part 'auth_dtos.g.dart';

@freezed
class IdTokenRequestDto with _$IdTokenRequestDto {
  const IdTokenRequestDto._();

  const factory IdTokenRequestDto({
    @JsonKey(name: 'id_token') required String idToken,
  }) = _IdTokenRequestDto;

  factory IdTokenRequestDto.fromDomain(String idToken) {
    return IdTokenRequestDto(
      idToken: idToken,
    );
  }

  factory IdTokenRequestDto.fromJson(Map<String, dynamic> json) =>
      _$IdTokenRequestDtoFromJson(json);
}

@freezed
class SignResponseDto with _$SignResponseDto {
  const SignResponseDto._();

  const factory SignResponseDto({
    @JsonKey(name: 'token') required AuthTokenDto token,
    @JsonKey(name: 'is_new_user') required bool isNewUser,
  }) = _SignResponseDto;

  factory SignResponseDto.fromDomain(SignResponse signResponse) {
    return SignResponseDto(
      token: AuthTokenDto.fromDomain(signResponse.authToken),
      isNewUser: signResponse.isNewUser.getOrCrash(),
    );
  }

  SignResponse toDomain() {
    return SignResponse(
      authToken: token.toDomain(),
      isNewUser: BooleanVO(isNewUser),
    );
  }

  factory SignResponseDto.fromJson(Map<String, dynamic> json) =>
      _$SignResponseDtoFromJson(json);
}

@freezed
class AuthTokenDto with _$AuthTokenDto {
  const AuthTokenDto._();

  const factory AuthTokenDto({
    @JsonKey(name: 'auth_token') required String authToken,
  }) = _AuthTokenDto;

  factory AuthTokenDto.fromDomain(AuthToken authToken) {
    return AuthTokenDto(authToken: authToken.authToken.getOrCrash());
  }

  AuthToken toDomain() {
    return AuthToken(
      authToken: StringVO(authToken),
    );
  }

  factory AuthTokenDto.fromJson(Map<String, dynamic> json) =>
      _$AuthTokenDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/auth/auth_method.dart';

part 'oauth_sign_result.freezed.dart';

@freezed
class OauthSignResult with _$OauthSignResult {
  const factory OauthSignResult({
    required bool isNewUser,
    required AuthMethod provider,
  }) = _OauthSignResult;
}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:snowrun_app/domain/auth/auth_method.dart';

part 'auth_sign_result.freezed.dart';

@freezed
class AuthSignResult with _$AuthSignResult {
  const factory AuthSignResult({
    required bool isNewUser,
    required AuthMethod provider,
  }) = _AuthSignResult;
}

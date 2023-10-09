// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:snowrun_app/domain/core/value_objects.dart';

// Project imports:
import 'package:snowrun_app/domain/user/model/app_user.dart';

extension FirebaseUserDomainX on User {
  AppUser toDomain() {
    return AppUser(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}

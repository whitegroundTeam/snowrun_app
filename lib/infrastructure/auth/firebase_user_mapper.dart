// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:doortoout/domain/core/value_objects.dart';

// Project imports:
import 'package:doortoout/domain/user/model/app_user.dart';

extension FirebaseUserDomainX on User {
  AppUser toDomain() {
    return AppUser(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}

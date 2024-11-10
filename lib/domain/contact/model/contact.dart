import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/address/model/address.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
class Contact with _$Contact {
  const Contact._();

  const factory Contact({
    required StringVO name,
    required StringVO countryCode,
    required StringVO phoneNumber,
    required StringVO email,
  }) = _Contact;

  factory Contact.empty() => Contact(
        name: StringVO(""),
        countryCode: StringVO(""),
        phoneNumber: StringVO(""),
        email: StringVO(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(countryCode.failureOrUnit)
        .andThen(phoneNumber.failureOrUnit)
        .andThen(email.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}

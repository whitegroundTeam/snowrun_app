import 'package:dartz/dartz.dart';
import 'package:doortoout/domain/core/failures.dart';
import 'package:doortoout/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.freezed.dart';

@freezed
class BankAccount with _$BankAccount {
  const BankAccount._();

  const factory BankAccount({
    required StringVO name,
    required StringVO accountNumber,
    required StringVO bankName,
  }) = _BankAccount;

  factory BankAccount.empty() =>
      BankAccount(
        name: StringVO(""),
        accountNumber: StringVO(""),
        bankName: StringVO(""),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(accountNumber.failureOrUnit)
        .andThen(bankName.failureOrUnit)
        .fold((f) => some(f), (_) => none());
    }
}

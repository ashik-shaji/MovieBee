import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:moviebee/domain/core/failures.dart';
import 'package:moviebee/domain/core/value_objects.dart';
import 'package:moviebee/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}

class UserName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UserName(String input) {
    print(input);
    return UserName._(validateUserName(input));
  }

  const UserName._(this.value);
}

class AddAmount extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory AddAmount(String input) {
    print('amount world');
    return AddAmount._(
      validateAddAmount(input).flatMap(validateAddAmountIsZero),
    );
  }

  const AddAmount._(this.value);
}

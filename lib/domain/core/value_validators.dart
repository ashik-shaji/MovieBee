import 'package:dartz/dartz.dart';
import 'package:moviebee/domain/auth/value_objects.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 8) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateUserName(String input) {
  print('hello  $input');
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyCredential(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateAddAmount(String input) {
  print('hello  $input amount getting');
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.emptyCredential(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateAddAmountIsZero(String input) {
  print('hello  $input amount getting zero');
  if (input == '0') {
    return left(ValueFailure.invalidAmount(failedValue: input));
  } else {
    return right(input);
  }
}

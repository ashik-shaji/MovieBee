import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required String? failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    @required String? failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.emptyCredential({
    @required String? failedValue,
  }) = _EmptyCredential<T>;
  const factory ValueFailure.invalidAmount({
    @required String? failedValue,
  }) = _InvalidAmount<T>;
}

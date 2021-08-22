import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:moviebee/domain/auth/auth_failure.dart';
import 'package:moviebee/domain/auth/user.dart';
import 'package:moviebee/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<User?> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required UserName userName,
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> emailVerify({
    @required EmailAddress emailAddress,
  });
  Future<Either<AuthFailure, Unit>> setPasswordHint({
    @required UserName passwordHint,
  });
  Future<Either<AuthFailure, String>> displayPasswordHint(
      {@required EmailAddress emailAddress});
  Future<Either<AuthFailure, String>> displayProfileText();
  Future<void> signOut();
  Future<Either<AuthFailure, String>> getBalance();
  Future<Either<AuthFailure, Unit>> addWalletAmount(
      {@required String addAmount});
}

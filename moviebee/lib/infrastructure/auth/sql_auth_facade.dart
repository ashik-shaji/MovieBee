import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:moviebee/domain/auth/auth_failure.dart';
import 'package:moviebee/domain/auth/i_auth_facade.dart';
import 'package:moviebee/domain/auth/user.dart';
import 'package:moviebee/domain/auth/value_objects.dart';
import 'package:moviebee/domain/core/value_objects.dart';
import 'package:moviebee/infrastructure/core/keys.dart';

@LazySingleton(as: IAuthFacade)
class SqlAuthFacade implements IAuthFacade {
  late SharedPreferences sharedPreferencesInstance;
  final ipAddressV6 = '192.168.230.170';

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required UserName? userName,
    @required EmailAddress? emailAddress,
    @required Password? password,
  }) async {
    final userNameStr = userName!.getOrCrash();
    final emailAddressStr = emailAddress!.getOrCrash();
    final passwordStr = password!.getOrCrash();
    const passwordHintStr = 'Password Hint Not Set';
    const balance = '0';
    final rSelectUrl =
        'https://$ipAddressV6/phpprodemo/RegisterSelect.php?emailaddress=$emailAddressStr';
    final http.Response response = await http.get(Uri.parse(rSelectUrl));
    final rSelectData = response.body.toString();
    if (rSelectData == emailAddressStr) {
      return left(const AuthFailure.emailAlreadyInUse());
    } else if (rSelectData == 'No records found') {
      final rInsertUrl =
          'https://$ipAddressV6/phpprodemo/RegisterInsert.php?emailaddress=$emailAddressStr&password=$passwordStr&username=$userNameStr&passwordhint=$passwordHintStr&balance=$balance';
      final http.Response response = await http.get(Uri.parse(rInsertUrl));
      final rInsertData = response.body.toString();
      if (rInsertData == 'Record inserted successfully') {
        final sharedUrl =
            'https://$ipAddressV6/phpprodemo/Shared.php?emailaddress=$emailAddressStr';
        final http.Response response = await http.get(Uri.parse(sharedUrl));
        final sharedData = response.body.toString();
        await sharedPreferencesInstance.setString(AUTOLOGIN_KEY, sharedData);
        return right(unit);
      }
      return left(const AuthFailure.serverError());
    } else {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress? emailAddress,
    @required Password? password,
  }) async {
    final emailAddressStr = emailAddress!.getOrCrash();
    final passwordStr = password!.getOrCrash();
    sharedPreferencesInstance = await SharedPreferences.getInstance();
    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/SigninEmailSelect.php?emailaddress=$emailAddressStr';
    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    if (eSelectData == emailAddressStr) {
      final pSelectUrl =
          'https://$ipAddressV6/phpprodemo/SigninPasswordSelect.php?emailaddress=$emailAddressStr';
      final http.Response response = await http.get(Uri.parse(pSelectUrl));
      final pSelectData = response.body.toString();
      if (pSelectData == passwordStr) {
        final sharedUrl =
            'https://$ipAddressV6/phpprodemo/Shared.php?emailaddress=$emailAddressStr';
        final http.Response response = await http.get(Uri.parse(sharedUrl));
        final sharedData = response.body.toString();
        await sharedPreferencesInstance.setString(AUTOLOGIN_KEY, sharedData);
        return right(unit);
      }
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    } else if (eSelectData == 'No records found') {
      return left(const AuthFailure.invalidEmailAndPasswordCombination());
    } else {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<User?> getSignedInUser() async {
    print('getsignedinuser');
    sharedPreferencesInstance = await SharedPreferences.getInstance();
    final _currentUserId = sharedPreferencesInstance.getString(AUTOLOGIN_KEY);
    print('get2');
    if (_currentUserId != null && _currentUserId != "") {
      return User(id: UniqueId.fromUniqueString(_currentUserId));
    } else {
      return null;
    }
  }

  @override
  Future<void> signOut() async {
    await sharedPreferencesInstance.setString(AUTOLOGIN_KEY, "");
  }

  @override
  Future<Either<AuthFailure, Unit>> emailVerify({
    @required EmailAddress? emailAddress,
  }) async {
    final emailAddressStr = emailAddress!.getOrCrash();

    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/SigninEmailSelect.php?emailaddress=$emailAddressStr';
    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    if (eSelectData == emailAddressStr) {
      return right(unit);
    } else {
      return left(const AuthFailure.userDoesNotExists());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> setPasswordHint({
    @required UserName? passwordHint,
  }) async {
    final passwordHintStr = passwordHint!.getOrCrash();
    sharedPreferencesInstance = await SharedPreferences.getInstance();

    final currentUserId = sharedPreferencesInstance.getString(AUTOLOGIN_KEY);
    final just = currentUserId.toString();
    print('hello chumma $just');

    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/passwordhint.php?id=$just&passwordhint=$passwordHintStr';
    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    if (eSelectData == 'PasswordHint updated successfully') {
      return right(unit);
    } else {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, String>> displayPasswordHint(
      {@required EmailAddress? emailAddress}) async {
    final emailAddressStr = emailAddress!.getOrCrash();
    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/passwordhint2.php?emailaddress=$emailAddressStr';
    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    print(eSelectData);
    if (eSelectData == 'Password Hint Not Set') {
      return left(const AuthFailure.passwordHintNotSet());
    } else if (eSelectData == 'No records found' ||
        eSelectData == 'ERROR: Could not able to execute' ||
        eSelectData == 'ERROR: Could not connect') {
      return left(const AuthFailure.serverError());
    }
    return right(eSelectData);
  }

  @override
  Future<Either<AuthFailure, String>> displayProfileText() async {
    sharedPreferencesInstance = await SharedPreferences.getInstance();

    final currentUserId = sharedPreferencesInstance.getString(AUTOLOGIN_KEY);
    final just = currentUserId.toString();
    final eSelectUrl = 'https://$ipAddressV6/phpprodemo/titletext.php?id=$just';
    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    if (eSelectData == 'No records found' ||
        eSelectData == 'ERROR: Could not able to execute' ||
        eSelectData == 'ERROR: Could not connect') {
      return left(const AuthFailure.serverError());
    } else {
      return right(eSelectData);
    }
  }

  @override
  Future<Either<AuthFailure, String>> getBalance() async {
    sharedPreferencesInstance = await SharedPreferences.getInstance();

    final currentUserId = sharedPreferencesInstance.getString(AUTOLOGIN_KEY);
    final just = currentUserId.toString();
    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/viewbalance.php?id=$just';
    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    if (eSelectData == 'No records found' ||
        eSelectData == 'ERROR: Could not able to execute' ||
        eSelectData == 'ERROR: Could not connect') {
      return left(const AuthFailure.serverError());
    } else {
      return right(eSelectData);
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> addWalletAmount({
    @required String? addAmount,
  }) async {
    sharedPreferencesInstance = await SharedPreferences.getInstance();

    final currentUserId = sharedPreferencesInstance.getString(AUTOLOGIN_KEY);
    final just = currentUserId.toString();
    print('hello chumma $just');

    final eSelectUrl =
        'https://$ipAddressV6/phpprodemo/updatebalance.php?id=$just&balance=$addAmount';
    final http.Response response = await http.get(Uri.parse(eSelectUrl));
    final eSelectData = response.body.toString();
    if (eSelectData == 'Balance updated successfully') {
      return right(unit);
    } else {
      return left(const AuthFailure.serverError());
    }
  }
}

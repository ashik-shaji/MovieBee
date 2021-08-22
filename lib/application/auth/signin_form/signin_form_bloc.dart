import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:moviebee/domain/auth/auth_failure.dart';
import 'package:moviebee/domain/auth/i_auth_facade.dart';
import 'package:moviebee/domain/auth/value_objects.dart';

part 'signin_form_bloc.freezed.dart';
part 'signin_form_event.dart';
part 'signin_form_state.dart';

@injectable
class SigninFormBloc extends Bloc<SigninFormEvent, SigninFormState> {
  final IAuthFacade _authFacade;

  SigninFormBloc(this._authFacade) : super();

  @override
  SigninFormState get initialState => SigninFormState.initial();

  @override
  Stream<SigninFormState> mapEventToState(
    SigninFormEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (e) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(e.emailStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordChanged: (e) async* {
        yield state.copyWith(
          password: Password(e.passwordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      userNameChanged: (e) async* {
        yield state.copyWith(
          userName: UserName(e.userNameStr),
          authFailureOrSuccessOption: none(),
        );
      },
      confirmPasswordChanged: (e) async* {
        yield state.copyWith(
          confirmPassword: Password(e.confirmPasswordStr),
          authFailureOrSuccessOption: none(),
        );
      },
      enableAutoValidate: (e) async* {
        yield state.copyWith(
            showErrorMessages: AutovalidateMode.always,
            authFailureOrSuccessOption: none());
      },
      registerWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPasswordAndUserName(
          _authFacade.registerWithEmailAndPassword,
        );
      },
      signInWithEmailAndPasswordPressed: (e) async* {
        yield* _performActionOnAuthFacadeWithEmailAndPassword(
          _authFacade.signInWithEmailAndPassword,
        );
      },
      passwordHintSectionPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;
        Either<AuthFailure, String>? checkHint;

        final isEmailValid = state.emailAddress!.isValid();

        if (isEmailValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );
          failureOrSuccess =
              await _authFacade.emailVerify(emailAddress: state.emailAddress!);
          if (failureOrSuccess == right(unit)) {
            checkHint = await _authFacade.displayPasswordHint(
                emailAddress: state.emailAddress!);
            print(checkHint);
            if (checkHint == left(const AuthFailure.passwordHintNotSet())) {
              failureOrSuccess = left(const AuthFailure.passwordHintNotSet());
            } else if (checkHint == left(const AuthFailure.serverError())) {
              failureOrSuccess = left(const AuthFailure.serverError());
            }
          }
        }

        yield state.copyWith(
          isSubmitting: false,
          passwordHint: UserName(checkHint.toString()),
          showErrorMessages: AutovalidateMode.always,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      setPasswordHintPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isPasswordHintValid = state.passwordHint!.isValid();

        if (isPasswordHintValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          failureOrSuccess = await _authFacade.setPasswordHint(
              passwordHint: state.passwordHint!);
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: AutovalidateMode.always,
            authFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      passwordHintChanged: (e) async* {
        yield state.copyWith(
          passwordHint: UserName(e.passwordHintStr),
          authFailureOrSuccessOption: none(),
        );
      },
      passwordHintEvent: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final checkHint = await _authFacade.displayPasswordHint(
            emailAddress: state.emailAddress!);
        if (checkHint == left(const AuthFailure.passwordHintNotSet())) {
          failureOrSuccess = left(const AuthFailure.passwordHintNotSet());
        } else if (checkHint == left(const AuthFailure.serverError())) {
          failureOrSuccess = left(const AuthFailure.serverError());
        } else {
          failureOrSuccess = right(unit);
          yield state.copyWith(
            passwordHint: UserName(checkHint.toString()),
          );
        }
        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      titleTextEvent: (e) async* {
        Either<AuthFailure, String>? titleStr;

        titleStr = await _authFacade.displayProfileText();

        yield state.copyWith(
          userName: UserName(titleStr.getOrElse(() => 'failed')),
        );
      },
      getBalanceEvent: (e) async* {
        Either<AuthFailure, String>? balanceStr;

        balanceStr = await _authFacade.getBalance();

        yield state.copyWith(
          balance: balanceStr.getOrElse(() => 'failed balance'),
        );
      },
      amountChanged: (e) async* {
        yield state.copyWith(
          amount: AddAmount(e.amount),
          authFailureOrSuccessOption: none(),
        );
      },
      addWalletAmountPressed: (e) async* {
        Either<AuthFailure, Unit>? failureOrSuccess;

        final isAddAmountValid = state.amount!.isValid();

        print('amount is valid');

        if (isAddAmountValid) {
          yield state.copyWith(
            isSubmitting: true,
            authFailureOrSuccessOption: none(),
          );

          final addUpAmount1 =
              state.amount!.value.getOrElse(() => 'add1 failed');
          print('addUpAmount1 is $addUpAmount1');
          final add1Convert = int.parse(addUpAmount1);
          print('add1Convert is $add1Convert');
          final addUpAmount2 = e.balance;
          print('addUpAmount2 is $addUpAmount2');
          final add2Convert = int.parse(addUpAmount2!);
          print('add2Convert is $add2Convert');
          final addUpAmountOrg = add1Convert + add2Convert;
          print('addUpAmountOrg is $addUpAmountOrg');
          final addUpAmountOrgStr = addUpAmountOrg.toString();
          print('addUpAmountOrgStr is $addUpAmountOrgStr');

          failureOrSuccess =
              await _authFacade.addWalletAmount(addAmount: addUpAmountOrgStr);
        }

        yield state.copyWith(
            isSubmitting: false,
            showErrorMessages: AutovalidateMode.always,
            authFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }

  Stream<SigninFormState> _performActionOnAuthFacadeWithEmailAndPassword(
    Future<Either<AuthFailure, Unit>> Function({
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress!.isValid();
    final isPasswordValid = state.password!.isValid();

    if (isEmailValid && isPasswordValid) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        emailAddress: state.emailAddress!,
        password: state.password!,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.always,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  Stream<SigninFormState>
      _performActionOnAuthFacadeWithEmailAndPasswordAndUserName(
    Future<Either<AuthFailure, Unit>> Function({
      @required UserName userName,
      @required EmailAddress emailAddress,
      @required Password password,
    })
        forwardedCall,
  ) async* {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress!.isValid();
    final isPasswordValid = state.password!.isValid();
    final isValidUserName = state.userName!.isValid();

    if (isEmailValid && isPasswordValid && isValidUserName) {
      yield state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      );

      failureOrSuccess = await forwardedCall(
        userName: state.userName!,
        emailAddress: state.emailAddress!,
        password: state.password!,
      );
    }

    yield state.copyWith(
      isSubmitting: false,
      showErrorMessages: AutovalidateMode.always,
      authFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }
}

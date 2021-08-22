part of 'signin_form_bloc.dart';

@freezed
abstract class SigninFormState with _$SigninFormState {
  const factory SigninFormState({
    @required bool? isSubmitting,
    @Default(AutovalidateMode.disabled) AutovalidateMode? showErrorMessages,
    @required UserName? userName,
    @required EmailAddress? emailAddress,
    @required Password? password,
    @required Password? confirmPassword,
    @required UserName? passwordHint,
    @required String? balance,
    @required AddAmount? amount,
    @required Option<Either<AuthFailure, Unit>>? authFailureOrSuccessOption,
  }) = _SigninFormState;

  factory SigninFormState.initial() => SigninFormState(
        isSubmitting: false,
        showErrorMessages: AutovalidateMode.disabled,
        userName: UserName(''),
        emailAddress: EmailAddress(''),
        password: Password(''),
        confirmPassword: Password(''),
        authFailureOrSuccessOption: none(),
        passwordHint: UserName(''),
        balance: '',
        amount: AddAmount(''),
      );
}

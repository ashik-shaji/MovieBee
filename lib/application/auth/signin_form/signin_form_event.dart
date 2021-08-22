part of 'signin_form_bloc.dart';

@freezed
class SigninFormEvent with _$SigninFormEvent {
  const factory SigninFormEvent.userNameChanged(String userNameStr) =
      UserNameChanged;
  const factory SigninFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SigninFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SigninFormEvent.confirmPasswordChanged(
      String confirmPasswordStr) = ConfirmPasswordChanged;
  const factory SigninFormEvent.passwordHintChanged(String passwordHintStr) =
      PasswordHintChanged;
  const factory SigninFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SigninFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SigninFormEvent.enableAutoValidate() = EnableAutoValidate;
  const factory SigninFormEvent.passwordHintSectionPressed() =
      PasswordHintSectionPressed;
  const factory SigninFormEvent.setPasswordHintPressed() =
      SetPasswordHintPressed;
  const factory SigninFormEvent.passwordHintEvent() = PasswordHintEvent;
  const factory SigninFormEvent.titleTextEvent() = TitleTextEvent;
  const factory SigninFormEvent.getBalanceEvent() = GetBalanceEvent;
  const factory SigninFormEvent.amountChanged(String amount) = AmountChanged;
  const factory SigninFormEvent.addWalletAmountPressed(String? balance) =
      AddWalletAmount;
}

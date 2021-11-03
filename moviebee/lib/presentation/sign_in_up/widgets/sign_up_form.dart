import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviebee/application/auth/bloc/auth_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

class SignUpForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninFormBloc, SigninFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption!.fold(
        () {},
        (either) => either.fold((failure) {
          final String bar = failure.maybeMap(
            serverError: (_) => 'Server Error',
            emailAlreadyInUse: (_) =>
                'Entered emailId is already taken try another',
            orElse: () => 'Error ! Contact the developer',
          );
          showFlash(
              context: context,
              duration: const Duration(seconds: 4),
              builder: (context, controller) {
                return Flash.bar(
                  controller: controller,
                  backgroundColor: kPrimaryColor.withAlpha(50),
                  child: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Container(
                      height: 35,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          const Icon(Icons.dangerous, color: kPrimaryColor),
                          const SizedBox(width: 8),
                          Text(
                            bar,
                            style: const TextStyle(
                              fontSize: 16,
                              color: kPrimaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              });
        }, (_) {
          context.router.replace(const HomePageRoute());
          context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
        }),
      );
    }, builder: (context, state) {
      return Padding(
        padding: const EdgeInsets.all(13.0),
        child: Form(
          autovalidateMode: state.showErrorMessages,
          child: ListView(
            children: [
              const SizedBox(height: 140),
              Center(
                child: Text(
                  'MB',
                  style: GoogleFonts.pacifico(
                    color: kPrimaryColor,
                    fontSize: 45,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPrimaryColor.withAlpha(50),
                ),
                child: TextFormField(
                  cursorColor: kPrimaryColor,
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Icon(
                        Icons.person,
                        color: kPrimaryColor,
                      ),
                    ),
                    hintText: 'Name',
                    border: InputBorder.none,
                  ),
                  autocorrect: false,
                  onChanged: (value) => context.bloc<SigninFormBloc>().add(
                        SigninFormEvent.userNameChanged(value),
                      ),
                  validator: (_) => context
                      .bloc<SigninFormBloc>()
                      .state
                      .userName!
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          emptyCredential: (_) => 'Username cannot be empty !',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPrimaryColor.withAlpha(50),
                ),
                child: TextFormField(
                  cursorColor: kPrimaryColor,
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Icon(
                        Icons.email,
                        color: kPrimaryColor,
                      ),
                    ),
                    hintText: 'Email',
                    border: InputBorder.none,
                  ),
                  autocorrect: false,
                  onChanged: (value) => context.bloc<SigninFormBloc>().add(
                        SigninFormEvent.emailChanged(value),
                      ),
                  validator: (_) => context
                      .bloc<SigninFormBloc>()
                      .state
                      .emailAddress!
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPrimaryColor.withAlpha(50),
                ),
                child: TextFormField(
                  cursorColor: kPrimaryColor,
                  decoration: const InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(bottom: 5),
                      child: Icon(
                        Icons.lock,
                        color: kPrimaryColor,
                      ),
                    ),
                    hintText: 'Password',
                    border: InputBorder.none,
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context.bloc<SigninFormBloc>().add(
                        SigninFormEvent.passwordChanged(value),
                      ),
                  validator: (_) =>
                      context.bloc<SigninFormBloc>().state.password!.value.fold(
                            (f) => f.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPrimaryColor.withAlpha(50),
                ),
                child: TextFormField(
                    cursorColor: kPrimaryColor,
                    decoration: const InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Icon(
                          Icons.lock,
                          color: kPrimaryColor,
                        ),
                      ),
                      hintText: 'Confirm Password',
                      border: InputBorder.none,
                    ),
                    autocorrect: false,
                    obscureText: true,
                    onChanged: (value) => context.bloc<SigninFormBloc>().add(
                          SigninFormEvent.confirmPasswordChanged(value),
                        ),
                    validator: (s) {
                      if (context
                              .bloc<SigninFormBloc>()
                              .state
                              .password!
                              .isValid() &&
                          context
                                  .bloc<SigninFormBloc>()
                                  .state
                                  .password!
                                  .getOrCrash() ==
                              s) {
                        return null;
                      } else if (s!.isEmpty) {
                        return "please retype the password here";
                      } else {
                        return "passwords don't match";
                      }
                    }),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        if (context
                                .bloc<SigninFormBloc>()
                                .state
                                .password!
                                .isValid() &&
                            context
                                    .bloc<SigninFormBloc>()
                                    .state
                                    .password!
                                    .getOrCrash() !=
                                context
                                    .bloc<SigninFormBloc>()
                                    .state
                                    .confirmPassword!
                                    .getOrCrash()) {
                          context
                              .bloc<SigninFormBloc>()
                              .add(const SigninFormEvent.enableAutoValidate());
                        } else {
                          context.bloc<SigninFormBloc>().add(
                              const SigninFormEvent
                                  .registerWithEmailAndPasswordPressed());
                        }
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kPrimaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: kPrimaryColor)))),
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 5),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        context.router.push(const SignInPageRoute());
                      },
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: const BorderSide(
                                          color: kPrimaryColor)))),
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (state.isSubmitting!) ...[
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: null,
                  backgroundColor: kPrimaryColor.withAlpha(50),
                  color: kPrimaryColor,
                ),
              ]
            ],
          ),
        ),
      );
    });
  }
}

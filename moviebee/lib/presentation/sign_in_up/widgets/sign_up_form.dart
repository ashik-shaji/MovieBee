import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebee/application/auth/bloc/auth_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
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
                  child: Text(
                    bar,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        backgroundColor: Colors.red),
                  ),
                );
              });
        }, (_) {
          context.router.replace(const HomePageRoute());
          context.bloc<AuthBloc>().add(const AuthEvent.authCheckRequested());
        }),
      );
    }, builder: (context, state) {
      return Form(
        autovalidateMode: state.showErrorMessages,
        child: ListView(
          children: [
            const SizedBox(height: 100),
            const Text(
              'Create Your Account',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Name',
              ),
              autocorrect: false,
              onChanged: (value) => context.bloc<SigninFormBloc>().add(
                    SigninFormEvent.userNameChanged(value),
                  ),
              validator: (_) =>
                  context.bloc<SigninFormBloc>().state.userName!.value.fold(
                        (f) => f.maybeMap(
                          emptyCredential: (_) => 'Username cannot be empty !',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
              onChanged: (value) => context.bloc<SigninFormBloc>().add(
                    SigninFormEvent.emailChanged(value),
                  ),
              validator: (_) =>
                  context.bloc<SigninFormBloc>().state.emailAddress!.value.fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
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
            TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Confirm Password',
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
                        context.bloc<SigninFormBloc>().add(const SigninFormEvent
                            .registerWithEmailAndPasswordPressed());
                      }
                    },
                    child: const Text(
                      'SIGN UP',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      context.router.push(const SignInPageRoute());
                    },
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            if (state.isSubmitting!) ...[
              const SizedBox(height: 8),
              const LinearProgressIndicator(value: null),
            ]
          ],
        ),
      );
    });
  }
}

import 'package:dartz/dartz.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebee/application/auth/bloc/auth_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:auto_route/auto_route.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SigninFormBloc, SigninFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption!.fold(
        () {},
        (either) => either.fold((failure) {
          final String bar = failure.maybeMap(
            serverError: (_) => 'Server Error',
            invalidEmailAndPasswordCombination: (_) =>
                'Invalid Email and Password combination',
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
              'Welcome Back',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 60,
              ),
            ),
            const SizedBox(height: 50),
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
            Column(children: [
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        context.bloc<SigninFormBloc>().add(const SigninFormEvent
                            .signInWithEmailAndPasswordPressed());
                      },
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        context.router.push(const SignUpPageRoute());
                      },
                      child: const Text(
                        'SIGN UP',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  context.router.push(const GetOtpPageRoute());
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
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

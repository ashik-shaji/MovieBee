import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class GetOtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocProvider(
          create: (context) => getIt<SigninFormBloc>(),
          child: BlocConsumer<SigninFormBloc, SigninFormState>(
              listener: (context, state) {
            state.authFailureOrSuccessOption!.fold(
              () {},
              (either) => either.fold((failure) {
                final String bar = failure.maybeMap(
                  userDoesNotExists: (value) =>
                      'Entered emailId does not have any user account',
                  serverError: (value) => "Server Error",
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
                //context.router.replace(const VerifyOtpPageRoute());
                showFlash(
                    context: context,
                    duration: const Duration(seconds: 4),
                    builder: (context, controller) {
                      final startHint = state.passwordHint!.value.toString();
                      final hintLen = startHint.length;
                      final finalHint = startHint.substring(12, hintLen - 2);
                      return Flash.bar(
                        controller: controller,
                        child: Text(
                          'Password Hint: $finalHint',
                          style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              backgroundColor: Colors.green),
                        ),
                      );
                    });
              }),
            );
          }, builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages,
              child: ListView(
                children: [
                  const SizedBox(height: 100),
                  const Text(
                    'Forgot Password',
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
                  Row(
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {
                            context.bloc<SigninFormBloc>().add(
                                const SigninFormEvent
                                    .passwordHintSectionPressed());
                          },
                          child: const Text(
                            'Get Password Hint',
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
          }),
        ));
  }
}

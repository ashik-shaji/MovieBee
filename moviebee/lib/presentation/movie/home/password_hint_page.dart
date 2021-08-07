import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class PasswordHintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Update Password Hint'),
        ),
        body: BlocProvider(
          create: (context) => getIt<SigninFormBloc>(),
          child: BlocConsumer<SigninFormBloc, SigninFormState>(
              listener: (context, state) {
            state.authFailureOrSuccessOption!.fold(
              () {},
              (either) => either.fold((failure) {
                final String bar = failure.maybeMap(
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
                showFlash(
                    context: context,
                    duration: const Duration(seconds: 4),
                    builder: (context, controller) {
                      return Flash.bar(
                        controller: controller,
                        child: const Text(
                          'Password Hint Updated Successfully',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              backgroundColor: Colors.green),
                        ),
                      );
                    });
                context.router.replace(const HomePageRoute());
              }),
            );
          }, builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages,
              child: ListView(
                children: [
                  const SizedBox(height: 50),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Enter Password Hint',
                    ),
                    autocorrect: false,
                    onChanged: (value) => context.bloc<SigninFormBloc>().add(
                          SigninFormEvent.passwordHintChanged(value),
                        ),
                    validator: (_) => context
                        .bloc<SigninFormBloc>()
                        .state
                        .passwordHint!
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            emptyCredential: (_) =>
                                'Password Hint cannot be empty !',
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
                                const SigninFormEvent.setPasswordHintPressed());
                          },
                          child: const Text(
                            'Update',
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

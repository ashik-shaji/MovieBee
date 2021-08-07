import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class VerifyOtpPage extends StatelessWidget {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: BlocProvider(
          create: (context) => getIt<SigninFormBloc>(),
          child: BlocConsumer<SigninFormBloc, SigninFormState>(
              listener: (context, state) {},
              builder: (context, state) {
                final startHint = state.passwordHint!.value.toString();
                final hintLen = startHint.length;
                final finalHint = startHint.substring(12, hintLen - 2);
                return Form(
                  child: ListView(
                    children: [
                      const SizedBox(height: 100),
                      const Text(
                        'Password Hint :',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 60,
                        ),
                      ),
                      Text(
                        finalHint,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 60,
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextButton(
                              onPressed: () {
                                context.router.push(const SignInPageRoute());
                              },
                              child: const Text('Go To Sign In'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/sign_in_up/widgets/sign_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sign In'),
        ),
        body: BlocProvider(
          create: (context) => getIt<SigninFormBloc>(),
          child: SignInForm(),
        ));
  }
}

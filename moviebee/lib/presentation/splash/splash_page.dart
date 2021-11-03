import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moviebee/application/auth/bloc/auth_bloc.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            print('getting');
          },
          authenticated: (_) {
            Future.delayed(const Duration(milliseconds: 1500))
                .then((value) => context.router.replace(const HomePageRoute()));
          },
          unauthenticated: (_) {
            Future.delayed(const Duration(milliseconds: 1500)).then(
                (value) => context.router.replace(const SignInPageRoute()));
          },
        );
      },
      child: Scaffold(
        body: Container(
          color: kPrimaryColor.withAlpha(50),
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              Center(
                child: Text(
                  'MB',
                  style: GoogleFonts.pacifico(
                    color: kPrimaryColor,
                    fontSize: 45,
                  ),
                ),
              ),
              const Center(
                child: CircularProgressIndicator(color: kPrimaryColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

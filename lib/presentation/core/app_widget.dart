import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebee/application/auth/bloc/auth_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/application/movie/bloc/movie_bloc_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';
import 'package:moviebee/presentation/sign_in_up/sign_in_page.dart';
import 'package:moviebee/presentation/splash/splash_page.dart';
import 'package:moviebee/presentation/routes/router.gr.dart' as router;

class AppWidget extends StatelessWidget {
  final _appRouter = router.AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<SigninFormBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<MovieBlocBloc>(),
        )
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}

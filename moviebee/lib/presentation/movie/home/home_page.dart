import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebee/application/auth/bloc/auth_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/movie/home/widgets/coming_soon_list.dart';
import 'package:moviebee/presentation/movie/home/widgets/now_playing_list.dart';
import 'package:moviebee/presentation/movie/wallet/view_balance_page.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            unauthenticated: (_) {
              context.router.replace(const SignInPageRoute());
            },
            orElse: () {});
      },
      child: Scaffold(
        drawer: Drawer(
            child: Container(
          color: kPrimaryColor.withAlpha(50),
          child: ListView(
            children: [
              DrawerHeader(
                decoration: const BoxDecoration(color: kPrimaryColor),
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white),
                          color: Colors.white,
                        ),
                        child: const Icon(
                          Icons.person,
                          color: kPrimaryColor,
                          size: 80,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const TitleText(hiStr: 'drawer'),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  Icons.monetization_on_outlined,
                  color: kPrimaryColor,
                  size: 22,
                ),
                title: const Text("Wallet",
                    style: TextStyle(color: kPrimaryColor, fontSize: 17)),
                onTap: () {
                  context.router.push(const ViewBalancePageRoute());
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.receipt_long,
                  color: kPrimaryColor,
                  size: 22,
                ),
                title: const Text("My Tickets",
                    style: TextStyle(color: kPrimaryColor, fontSize: 17)),
                onTap: () {
                  context.router.push(const TicketDisplayPageRoute());
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.exit_to_app,
                  color: kPrimaryColor,
                  size: 22,
                ),
                title: const Text("Log Out",
                    style: TextStyle(color: kPrimaryColor, fontSize: 17)),
                onTap: () {
                  context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
                },
              ),
            ],
          ),
        )),
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          title: const TitleText(hiStr: 'hi'),
          leading: Builder(
            builder: (context) {
              return IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  });
            },
          ),
          /*IconButton(
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: const Icon(Icons.exit_to_app)),*/
          actions: [
            IconButton(
                onPressed: () {
                  context.router.push(const PasswordHintPageRoute());
                },
                icon: const Icon(Icons.lightbulb_outline)),
          ],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 30),
            const Text(
              'Now Playing',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(child: NowPlayingList()),
            /*Padding(
              padding: const EdgeInsets.all(13.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset('assets/ad/ad2.jpeg')),
            ),*/
            const Text(
              'Coming Soon',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 10),
            Expanded(child: ComingSoonList()),
          ],
        ),
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String hiStr;

  const TitleText({Key? key, required this.hiStr}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => getIt<SigninFormBloc>()
          ..add(const SigninFormEvent.titleTextEvent()),
        child: BlocConsumer<SigninFormBloc, SigninFormState>(
          listener: (context, state) {},
          builder: (context, state) {
            final titleText = state.userName!.value.getOrElse(() => '');
            if (hiStr == 'hi') {
              return Text('Hi, $titleText',
                  style: const TextStyle(color: Colors.white, fontSize: 20));
            } else {
              return Text(titleText,
                  style: const TextStyle(color: Colors.white, fontSize: 20));
            }
          },
        ));
  }
}

/*BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
            unauthenticated: (_) {
              context.router.replace(const SignInPageRoute());
            },
            orElse: () {});
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(''),
          leading: IconButton(
              onPressed: () {
                context.bloc<AuthBloc>().add(const AuthEvent.signedOut());
              },
              icon: const Icon(Icons.exit_to_app)),
          actions: [
            IconButton(
                onPressed: () {
                  context.router.replace(const PasswordHintPageRoute());
                },
                icon: const Icon(Icons.lightbulb_outline)),
          ],
        ),
      ),
    );*/

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:moviebee/presentation/core/contants.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class ViewBalancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: BlocProvider(
              create: (context) => getIt<SigninFormBloc>()
                ..add(const SigninFormEvent.getBalanceEvent()),
              child: BlocConsumer<SigninFormBloc, SigninFormState>(
                listener: (context, state) {},
                builder: (context, state) {
                  final balanceAmount = state.balance;
                  return Container(
                    color: kPrimaryColor.withAlpha(50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          onPressed: () {
                            context.router.push(const HomePageRoute());
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: kPrimaryColor,
                          ),
                        ),
                        const SizedBox(height: 30),
                        const Center(
                          child: Text(
                            'Balance',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Center(
                          child: Text(
                            'Rs $balanceAmount',
                            style: const TextStyle(
                              color: kPrimaryColor,
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: kPrimaryColor,
                              fixedSize: const Size(230, 50),
                            ),
                            onPressed: () {
                              context.router.push(
                                  TopUpWalletPageRoute(balance: balanceAmount));
                            },
                            child: const Center(
                              child: Text(
                                'TopUp Wallet',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: TextButton(
                              onPressed: () {
                                context.router.replace(const HomePageRoute());
                              },
                              child: const Text(
                                'Go To Home',
                                style: TextStyle(
                                  color: kPrimaryColor,
                                ),
                              )),
                        ),
                      ],
                    ),
                  );
                },
              ))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
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
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          context.router.pop();
                        },
                        icon: const Icon(Icons.arrow_back),
                      ),
                      const Center(
                        child: Text('Balance'),
                      ),
                      const SizedBox(height: 15),
                      Center(
                        child: Text('Rs $balanceAmount'),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
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
                    ],
                  );
                },
              ))),
    );
  }
}

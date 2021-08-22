import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:moviebee/application/auth/signin_form/signin_form_bloc.dart';
import 'package:moviebee/injection.dart';
import 'package:moviebee/presentation/routes/router.gr.dart';

class TopUpWalletPage extends StatelessWidget {
  final String? balance;
  const TopUpWalletPage({
    Key? key,
    required this.balance,
  }) : super(key: key);

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
                      return Flash.bar(
                        controller: controller,
                        child: const Text(
                          'Amount added successfully',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              backgroundColor: Colors.green),
                        ),
                      );
                    });
                context.router.replace(const ViewBalancePageRoute());
              }),
            );
          }, builder: (context, state) {
            return Form(
              autovalidateMode: state.showErrorMessages,
              child: ListView(
                children: [
                  const SizedBox(height: 100),
                  const Text(
                    'Add Amount',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                  const SizedBox(height: 50),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      // ignore: unnecessary_raw_strings
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                    ],
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Enter Amount',
                    ),
                    autocorrect: false,
                    onChanged: (value) => context.bloc<SigninFormBloc>().add(
                          SigninFormEvent.amountChanged(value),
                        ),
                    validator: (_) => context
                        .bloc<SigninFormBloc>()
                        .state
                        .amount!
                        .value
                        .fold(
                          (f) => f.maybeMap(
                            emptyCredential: (_) => 'Amount cannot be empty!',
                            invalidAmount: (_) => 'Amount cannot be zero!',
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
                                SigninFormEvent.addWalletAmountPressed(
                                    balance));
                          },
                          child: const Text(
                            'Add Amount',
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

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';
import 'package:ihar_flutter/features/common/snakbar.dart';
import 'package:ihar_flutter/features/common/textFieldCustom.dart';
import 'package:ihar_flutter/features/login/bloc/sign_up_with_email/sign_up_with_email_bloc.dart';

import '../../../core/bloc/auth_ bloc/auth_bloc.dart';

class SignUpWithEmailScreen extends StatelessWidget {
  SignUpWithEmailScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light),
      child: Scaffold(
        floatingActionButton: Padding(
          padding: EdgeInsets.zero,
          child: IconButton(
            tooltip: "Back",
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
        body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/imgaes/background.png"))),
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 600, minWidth: 310),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: BlocProvider<SignUpWithEmailBloc>(
                  create: (context) => getIt<SignUpWithEmailBloc>(),
                  child: BlocConsumer<SignUpWithEmailBloc, SignUpWithEmailState>(
                    listener: (context, state) {
                      state.mapOrNull(completed: (s) {
                        ScaffoldMessenger.of(context).showSnackBar(AppSnackBars.withText("Verification Email Sent"));
                        Navigator.of(context).pop();
                      }, exception: (s) {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(AppSnackBars.withText(s.appExceptions.message ?? "Some Error has occured"));
                        Navigator.of(context).pop();
                      });
                    },
                    builder: (context, state) {
                      if (state == const SignUpWithEmailState.loading()) {
                        print("loading  yessshaj");
                        return Container(
                            height: 300,
                            width: 280,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: LoadingAnimation(),
                            ));
                      }

                      return SizedBox(
                        width: 280,
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            TextFieldCustom(
                                controller: emailController, hintText: "Email", isValid: true, obscureText: false),
                            const SizedBox(height: 20),
                            TextFieldCustom(
                                controller: passwordController, hintText: "Email", isValid: true, obscureText: true),
                            const SizedBox(height: 20),
                            TextButton(
                                onPressed: () {
                                  BlocProvider.of<SignUpWithEmailBloc>(context).add(SignUpWithEmailEvent.started(
                                      emailAddress: emailController.text, password: passwordController.text));
                                },
                                child: const Text("signUp")),
                            const SizedBox(height: 20),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

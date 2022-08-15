import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';

import '../../../core/bloc/auth_ bloc/auth_bloc.dart';
import '../../common/snakbar.dart';
import '../../common/textFieldCustom.dart';

class SignInWithEmailScreen extends StatelessWidget {
  SignInWithEmailScreen({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light),
      child: Scaffold(
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
                child: BlocConsumer<AuthBloc, AuthState>(
                  bloc: getIt<AuthBloc>(),
                  listener: (context, state) {
                    state.mapOrNull(exception: (s) {
                      Navigator.of(context).pop();
                      // ScaffoldMessenger.of(context)
                      // .showSnackBar(AppSnackBars.withText(s.appExceptions.message ?? "Some Error has occured"));
                      // Navigator.of(context).pop();
                    });
                  },
                  builder: (context, state) {
                    if (state == const AuthState.loading()) {
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

                    return Column(
                      children: [
                        const SizedBox(height: 10),
                        const SizedBox(height: 10),
                        TextFieldCustom(
                            controller: emailController, hintText: "Email", isValid: true, obscureText: false),
                        const SizedBox(height: 20),
                        TextFieldCustom(
                            controller: passwordController, hintText: "Email", isValid: true, obscureText: true),
                        const SizedBox(height: 20),
                        TextButton(
                            onPressed: () {
                              getIt<AuthBloc>().add(AuthEvent.signInWithEmail(
                                  email: emailController.text, password: passwordController.text));
                            },
                            child: const Text("signIn")),
                        const SizedBox(height: 20),
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pushNamed("/signupWithEmailScreen");
                            },
                            child: const Text("signUp")),
                        const SizedBox(height: 20),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

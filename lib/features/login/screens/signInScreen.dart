import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:injectable/injectable.dart';

import '../../../core/bloc/auth_ bloc/auth_bloc.dart';
import '../../common/snakbar.dart';
import '../bloc/sign_in_screen_bloc/sign_in_screen_bloc.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  final signinBloc = getIt<SignInScreenBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {},
      child: BlocProvider<SignInScreenBloc>(
        create: (context) => signinBloc,
        child: BlocListener<SignInScreenBloc, SignInScreenState>(
          listener: (context, state) {
            print(state);
            state.whenOrNull(exception: (AppExceptions appExceptions) {
              ScaffoldMessenger.of(context).showSnackBar(AppSnackBars.withText(appExceptions.message.toString()));
            }, completed: (s) {
              getIt<AuthBloc>().add(const AuthEvent.checkAuth());
            });
          },
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
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Image.asset("assets/imgaes/appLogo@2x.png", cacheHeight: 200),
                        Image.asset("assets/imgaes/emailSignInButton.png", width: 280),
                        Material(
                          // borderRadius: BorderRadius.circular(15),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: InkWell(
                            onTap: () {
                              signinBloc.add(const SignInScreenEvent.signInAnonyously());
                            },
                            child: Image.asset("assets/imgaes/anonymouslySignInButton.png", width: 280),
                          ),
                        ),
                        Material(
                          // borderRadius: BorderRadius.circular(15),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                          child: InkWell(
                              onTap: () {
                                signinBloc.add(const SignInScreenEvent.signInWithGoogle());
                              },
                              child: Image.asset("assets/imgaes/googleSignInButton.png", width: 280)),
                        ),
                        TextButton(
                          child: const Text("Sign in"),
                          onPressed: () {
                            // getIt<AppAuth>().signInWithGoogle();
                            signinBloc.add(const SignInScreenEvent.signInWithGoogle());
                          },
                        ),
                      ],
                    ),
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

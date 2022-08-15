import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';

import '../../../core/bloc/auth_ bloc/auth_bloc.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        }
        return true;
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value:
            const SystemUiOverlayStyle(statusBarColor: Colors.transparent, statusBarIconBrightness: Brightness.light),
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
                  child: BlocBuilder<AuthBloc, AuthState>(
                    bloc: getIt<AuthBloc>(),
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
                          SvgPicture.asset("assets/imgaes/appLogo.svg", height: 200),
                          // Image.asset("assets/imgaes/emailSignInButton.png", width: 280),

                          Material(
                            // borderRadius: BorderRadius.circular(15),
                            elevation: 4,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            child: InkWell(
                              onTap: () {
                                // getIt<AuthBloc>().add(const AuthEvent.signInAnonyously());
                                // signinWithEmailScreen
                                Navigator.of(context).pushNamed("/signinWithEmailScreen");
                              },
                              child: SvgPicture.asset("assets/imgaes/emailSignInButton.svg", width: 270),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Material(
                            // borderRadius: BorderRadius.circular(15),
                            elevation: 4,
                            shadowColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            child: InkWell(
                              onTap: () {
                                getIt<AuthBloc>().add(const AuthEvent.signInAnonyously());
                              },
                              child: SvgPicture.asset("assets/imgaes/anonymouslySignInButton.svg", width: 270),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Material(
                            // borderRadius: BorderRadius.circular(15),
                            shadowColor: Colors.black,
                            elevation: 4,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                            child: InkWell(
                                onTap: () {
                                  getIt<AuthBloc>().add(const AuthEvent.signInWithGoogle());
                                },
                                child: SvgPicture.asset("assets/imgaes/googleSignInButton.svg", width: 270)),
                          ),
                          const SizedBox(height: 30),
                        ],
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

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/injection.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/bloc/auth_ bloc/auth_bloc.dart';
import '../../../core/bloc/auth_ bloc/auth_bloc.dart';
import '../../common/snakbar.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                      Image.asset("assets/imgaes/appLogo@2x.png", cacheHeight: 200),
                      Image.asset("assets/imgaes/emailSignInButton.png", width: 280),
                      Material(
                        // borderRadius: BorderRadius.circular(15),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: InkWell(
                          onTap: () {
                            getIt<AuthBloc>().add(const AuthEvent.signInAnonyously());
                          },
                          child: Image.asset("assets/imgaes/anonymouslySignInButton.png", width: 280),
                        ),
                      ),
                      Material(
                        // borderRadius: BorderRadius.circular(15),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: InkWell(
                            onTap: () {
                              getIt<AuthBloc>().add(const AuthEvent.signInWithGoogle());
                            },
                            child: Image.asset("assets/imgaes/googleSignInButton.png", width: 280)),
                      ),
                      const SizedBox(height: 10),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

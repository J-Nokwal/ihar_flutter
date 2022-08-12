import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ihar_flutter/core/bloc/auth_%20bloc/auth_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Container(
          height: 200,
          // color: kColors.whitePure,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purpleAccent,
          ),
          child: Center(
              child: Column(
            children: [
              Text("splash screen"),
              SizedBox(height: 20),
            ],
          )),
        ),
      ),
    );
  }
}

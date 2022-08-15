import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ihar_flutter/features/common/loadingAnimation.dart';

import '../../core/bloc/auth_ bloc/auth_bloc.dart';
import '../../core/injection.dart';
import 'FloatingAnimationWidget.dart';

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({Key? key, required this.onPress, this.popOnRetry = false}) : super(key: key);
  final Future<void> Function() onPress;
  final bool? popOnRetry;
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
                  child: Column(
                children: [
                  const SizedBox(height: 20),
                  FloatingAnimation(child: SvgPicture.asset("assets/imgaes/noInternetLogo.svg", height: 180)),
                  const SizedBox(height: 30),
                  Material(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    elevation: 6,

                    shadowColor: Colors.black,
                    // shape: const CircleBorder(),
                    clipBehavior: Clip.antiAlias,
                    child: InkWell(
                      onTap: () async {
                        print("retry pressed");
                        if (popOnRetry ?? false) {
                          Navigator.of(context).pop();
                        }
                        await onPress();
                      },
                      child: Image.asset(
                        "assets/imgaes/tryAgainLogo.png",
                        height: 60,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}

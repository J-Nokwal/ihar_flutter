import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Center(child: RiveAnimation.asset("assets/rive/runner_boy.riv")),
    );
  }
}

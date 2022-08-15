import 'package:flutter/material.dart';

class FloatingAnimation extends StatefulWidget {
  const FloatingAnimation(
      {Key? key, required this.child, this.duration = const Duration(seconds: 1, milliseconds: 500)})
      : super(key: key);
  final Widget child;
  final Duration duration;
  @override
  State<FloatingAnimation> createState() => _FloatingAnimationState();
}

class _FloatingAnimationState extends State<FloatingAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: widget.duration)..repeat(reverse: true);
    _animation = Tween(begin: Offset.zero, end: const Offset(0, 0.08)).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Material(
          clipBehavior: Clip.antiAlias,
          shadowColor: Colors.black,
          elevation: 10,
          shape: const CircleBorder(),
          child: widget.child),
    );
  }
}

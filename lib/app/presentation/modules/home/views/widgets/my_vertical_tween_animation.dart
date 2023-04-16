import 'package:flutter/material.dart';

class MyVerticalTweenAnimation extends StatelessWidget {
  const MyVerticalTweenAnimation({
    required this.tween,
    required this.duration,
    required this.child,
    this.curve = Curves.easeInOutQuart,
    super.key,
  });

  final Tween<double> tween;
  final Duration duration;
  final Widget child;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: tween,
      curve: curve,
      duration: duration,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, value),
          child: child,
        );
      },
      child: child,
    );
  }
}

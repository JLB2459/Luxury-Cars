import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SplashCar extends StatelessWidget {
  const SplashCar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: -70),
      duration: const Duration(seconds: 1),
      builder: (context, value, child) {
        return Transform(
          transform: Matrix4.identity()
            ..scale(1.70)
            ..translate(value),
          child: child,
        );
      },
      child: CachedNetworkImage(
        imageUrl:
            'https://www.pngplay.com/wp-content/uploads/13/Mustang-Transparent-Image.png',
      ),
    );
  }
}

import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/material.dart';

class SplashMessage extends StatelessWidget {
  const SplashMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 400, end: 0),
      duration: const Duration(milliseconds: 1200),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(value, 0),
          child: child,
        );
      },
      child: Text(
        'Find a variety of the car of your dreams, at a \ngood price and quality premium',
        textAlign: TextAlign.center,
        style: FontStyles.normal.copyWith(
          fontSize: 16,
          color: Colors.grey.shade400,
        ),
      ),
    );
  }
}

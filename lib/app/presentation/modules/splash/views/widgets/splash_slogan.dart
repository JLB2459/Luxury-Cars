import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/material.dart';

class SplashSlogan extends StatelessWidget {
  const SplashSlogan({
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
        'Luxury Cars. \nEnjoy the Premium',
        textAlign: TextAlign.center,
        style: FontStyles.title.copyWith(
          color: const Color(0XFFFFFFFF),
          fontSize: 28,
        ),
      ),
    );
  }
}

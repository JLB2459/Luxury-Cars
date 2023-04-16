import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/material.dart';

class SplashTitle extends StatelessWidget {
  const SplashTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: 30),
      duration: const Duration(milliseconds: 1200),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, value),
          child: child,
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(
            size: 25,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            'Luxury Cars',
            style: FontStyles.title.copyWith(
              color: const Color(0XFFFFFFFF),
            ),
          ),
        ],
      ),
    );
  }
}

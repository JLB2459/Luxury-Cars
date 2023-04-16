import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(
        begin: 90,
        end: 0,
      ),
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
          Text(
            'Already have an account?',
            textAlign: TextAlign.center,
            style: FontStyles.normal.copyWith(
              color: Colors.grey.shade400,
            ),
          ),
          TextButton(
            onPressed: () {
              debugPrint('Sign in');
            },
            child: Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: FontStyles.normal.copyWith(
                color: const Color(0XFFFFFFFF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

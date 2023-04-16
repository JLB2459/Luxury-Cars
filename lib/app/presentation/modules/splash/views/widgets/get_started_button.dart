import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:cars/app/presentation/routes/routes.dart';
import 'package:flutter/cupertino.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(
        begin: 75,
        end: 0,
      ),
      duration: const Duration(seconds: 1),
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, value),
          child: child,
        );
      },
      child: SizedBox(
        width: double.infinity,
        child: CupertinoButton(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0XFFFFFFFF),
          child: Text(
            'Get Started',
            style: FontStyles.subtitle.copyWith(
              color: const Color(0XFF141C27),
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {
            Navigator.pushNamed(context, Routes.home);
          },
        ),
      ),
    );
  }
}

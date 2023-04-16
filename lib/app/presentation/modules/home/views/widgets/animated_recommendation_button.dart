import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/my_vertical_tween_animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AnimatedRecommendationButton extends StatelessWidget {
  const AnimatedRecommendationButton({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      sliver: SliverToBoxAdapter(
        child: MyVerticalTweenAnimation(
          duration: const Duration(milliseconds: 800),
          tween: Tween(begin: 20, end: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommendation',
                style: FontStyles.subtitle.copyWith(
                  color: const Color(0XFF141C27),
                  fontWeight: FontWeight.bold,
                ),
              ),
              CupertinoButton(
                borderRadius: BorderRadius.zero,
                padding: EdgeInsets.zero,
                minSize: kMinInteractiveDimension / 2,
                onPressed: onPressed,
                child: Text(
                  'View All',
                  style: FontStyles.normal.copyWith(
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

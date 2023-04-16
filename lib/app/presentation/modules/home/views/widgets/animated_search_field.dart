import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/my_vertical_tween_animation.dart';
import 'package:flutter/material.dart';

class AnimatedSearchField extends StatelessWidget {
  const AnimatedSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyVerticalTweenAnimation(
      tween: Tween(begin: 30, end: 0),
      duration: const Duration(milliseconds: 1200),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search',
          hintStyle: FontStyles.normal.copyWith(
            color: Colors.grey.shade400,
            fontSize: 16,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Colors.grey.shade400,
          ),
          filled: true,
          fillColor: const Color(0XFFFFFFFF),
          suffixIcon: IconButton(
            splashRadius: 16,
            onPressed: () {
              debugPrint('Settings');
            },
            icon: Icon(
              Icons.tune_outlined,
              color: Colors.grey.shade400,
            ),
          ),
        ),
      ),
    );
  }
}

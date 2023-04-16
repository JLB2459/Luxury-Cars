import 'package:cars/app/domain/controllers/home/home_view_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        5,
        (index) {
          final currentSlider = context.select<HomeViewController, double?>(
            (value) => value.currentSlider,
          );
          final isSelected = currentSlider!.round() == index;

          return Container(
            margin: index == 0 ? null : const EdgeInsets.only(left: 4),
            width: 20,
            height: 6,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0XFF121926) : Colors.grey,
              borderRadius: BorderRadius.circular(2.5),
            ),
          );
        },
      ),
    );
  }
}

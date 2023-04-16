import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/material.dart';

class CarDetailsItem extends StatelessWidget {
  const CarDetailsItem({
    required this.icon,
    required this.label,
    required this.information,
    super.key,
  });

  final IconData icon;
  final String label;
  final String information;

  @override
  Widget build(BuildContext context) {
    const Widget spacing = SizedBox(
      height: 8,
    );

    return Column(
      children: [
        Icon(
          // Icons.route_rounded,
          icon,
          color: const Color(0XFF121926),
          size: 32,
        ),
        spacing,
        Text(
          //'6500 rpm',
          information,
          style: FontStyles.blacktitle,
        ),
        spacing,
        Text(
          // 'Power',
          label,
          style: FontStyles.greySubtitle,
        ),
      ],
    );
  }
}

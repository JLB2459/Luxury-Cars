import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/material.dart';

class DriveModeInformation extends StatelessWidget {
  const DriveModeInformation({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Drive Mode',
            style: FontStyles.blacktitle.copyWith(
              fontSize: 15,
            ),
          ),
          IconButton(
            splashRadius: 16,
            onPressed: onPressed,
            icon: const Icon(Icons.keyboard_control_outlined),
          )
        ],
      ),
    );
  }
}

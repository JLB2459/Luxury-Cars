import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuyCarButton extends StatelessWidget {
  const BuyCarButton({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      pressedOpacity: 0.7,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
      onPressed: onPressed,
      child: Text(
        'Buy now',
        style: FontStyles.blacktitle,
      ),
    );
  }
}

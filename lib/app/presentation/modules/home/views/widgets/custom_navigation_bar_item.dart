import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavigationBarItem extends StatelessWidget {
  const CustomNavigationBarItem({
    required this.onPressed,
    this.color = Colors.white,
    this.icon = Icons.home_rounded,
    this.isSelected = false,
    this.size = 36,
    super.key,
  });
  final VoidCallback onPressed;
  final IconData icon;
  final bool isSelected;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Icon(
        icon,
        color: isSelected ? color : const Color(0xFF535556),
        size: size,
      ),
    );
  }
}

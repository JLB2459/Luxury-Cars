import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/material.dart';

class NotificationBarButton extends StatelessWidget {
  const NotificationBarButton({
    super.key,
    this.onTap,
    this.withNotification = false,
  });
  final VoidCallback? onTap;
  final bool withNotification;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          const FlutterLogo(
            size: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'Luxury cars',
            style: FontStyles.brand,
          ),
          const Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                const Icon(
                  Icons.notifications_outlined,
                  size: 25,
                ),
                if (withNotification)
                  Positioned(
                    top: 6,
                    right: 4,
                    child: Container(
                      height: 6.5,
                      width: 6.5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent.shade400,
                      ),
                    ),
                  )
                else
                  const SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

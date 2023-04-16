import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:cars/app/presentation/modules/details/views/widgets/buy_car_button.dart';
import 'package:flutter/material.dart';

class BuyCarPanel extends StatelessWidget {
  const BuyCarPanel({
    required this.carModel,
    required this.price,
    super.key,
  });
  final String carModel;
  final double price;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(
        vertical: 8,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        color: const Color(0XFF121926),
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                //'Chevrolet Camaro',
                carModel,
                style: FontStyles.subtitle,
              ),
              Text(
                //' 45 900',
                '$price',
                style: FontStyles.normal.copyWith(
                  color: Colors.white54,
                ),
              ),
            ],
          ),
          BuyCarButton(
            onPressed: () {
              debugPrint('Buy car button was pressed');
            },
          ),
        ],
      ),
    );
  }
}

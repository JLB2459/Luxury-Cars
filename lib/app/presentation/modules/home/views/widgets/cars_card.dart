import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:cars/app/presentation/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarsCard extends StatelessWidget {
  const CarsCard({
    required this.asset,
    required this.carModel,
    required this.carLocation,
    required this.carPrice,
    this.isLightTheme = false,
    super.key,
  });
  final String asset;
  final String carModel;
  final String carLocation;
  final double carPrice;
  final bool isLightTheme;

  static const BorderRadius borderRadius =
      BorderRadius.all(Radius.circular(10));

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      pressedOpacity: 0.75,
      borderRadius: borderRadius,
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.pushNamed(context, Routes.details);
      },
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        color: isLightTheme ? const Color(0XFFFAF0F1) : const Color(0XFF121926),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: CachedNetworkImage(
                    // 'https://cdn.pixabay.com/photo/2015/10/01/17/17/car-967387_1280.png',
                    imageUrl: asset,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              //const SizedBox(height: 10),
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        // 'Chevrolet Camaro',
                        carModel,
                        style: isLightTheme
                            ? FontStyles.subtitle
                                .copyWith(color: const Color(0XFF121926))
                            : FontStyles.subtitle,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.grey.shade400,
                            size: 20,
                          ),
                          Text(
                            // 'Lima',
                            carLocation,
                            style: FontStyles.normal.copyWith(
                              color: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.attach_money,
                        color: Color(0XFFFEBA57),
                        size: 20,
                      ),
                      Text(
                        //'59,490',
                        '$carPrice',
                        style: isLightTheme
                            ? FontStyles.subtitle
                                .copyWith(color: const Color(0XFF121926))
                            : FontStyles.subtitle,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

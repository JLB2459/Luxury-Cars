import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    required this.asset,
    required this.rating,
    required this.carName,
    required this.carPrice,
    super.key,
  });

  final String asset;
  final double rating;
  final String carName;
  final double carPrice;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Icons.star_rounded,
                color: Color(0XFFFEBA57),
                size: 20,
              ),
              Text(
                // '4.5',
                '$rating',
                style: FontStyles.normal.copyWith(
                  color: Colors.grey.shade400,
                ),
              ),
            ],
          ),
          AspectRatio(
            aspectRatio: 2,
            child: CachedNetworkImage(
              //'https://www.pngplay.com/wp-content/uploads/13/Audi-RS6-Transparent-File.png',
              imageUrl: asset,
            ),
          ),
          AutoSizeText(
            // 'Audi RS 6 Avant',
            carName,
            maxLines: 1,
            minFontSize: 14,
            style: FontStyles.subtitle.copyWith(
              color: const Color(0XFF141C27),
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.attach_money,
                color: Color(0XFFFEBA57),
                size: 16,
              ),
              Text(
                // '5,999',
                '$carPrice',
                style: FontStyles.subtitle.copyWith(
                  color: const Color(0XFF121926),
                  fontSize: 14,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

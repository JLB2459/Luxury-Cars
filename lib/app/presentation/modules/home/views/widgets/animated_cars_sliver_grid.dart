import 'package:cars/app/presentation/modules/home/views/widgets/my_vertical_tween_animation.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/recommendation_card.dart';
import 'package:flutter/material.dart';

class AnimatedCarsSliverGrid extends StatelessWidget {
  const AnimatedCarsSliverGrid({
    required this.carList,
    super.key,
  });
  final List<Map<String, dynamic>> carList;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final car = carList[index];
          return MyVerticalTweenAnimation(
            tween: Tween(begin: 70, end: 0),
            duration: const Duration(milliseconds: 1200),
            child: RecommendationCard(
              asset: car['image'].toString(),
              rating: double.parse(
                car['rating'].toString(),
              ),
              carName: '${car['brand']} ${car['model']}',
              carPrice: double.parse(
                car['price'].toString(),
              ),
            ),
          );
        },
        childCount: carList.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
    );
  }
}

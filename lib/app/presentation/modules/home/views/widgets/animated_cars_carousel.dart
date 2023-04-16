import 'package:cars/app/presentation/modules/home/views/widgets/car_list_view.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/custom_indicator.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/my_vertical_tween_animation.dart';
import 'package:flutter/material.dart';

class AnimatedCarsCarousel extends StatelessWidget {
  const AnimatedCarsCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      sliver: SliverToBoxAdapter(
        child: MyVerticalTweenAnimation(
          tween: Tween(begin: 80, end: 0),
          duration: const Duration(milliseconds: 1000),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.325,
                width: double.infinity,
                child: const CarsListView(),
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

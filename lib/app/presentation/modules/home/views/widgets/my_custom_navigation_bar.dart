import 'package:cars/app/domain/controllers/home/home_view_controller.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/custom_navigation_bar_item.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/my_vertical_tween_animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCustomNavigationBar extends StatelessWidget {
  const MyCustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final currentPage = context.select<HomeViewController, int>(
      (e) => e.currentPage,
    );
    final homeController = context.read<HomeViewController>();

    return MyVerticalTweenAnimation(
      tween: Tween(begin: 70, end: 0),
      duration: const Duration(milliseconds: 1200),
      child: Container(
        margin: const EdgeInsets.all(
          20,
        ).copyWith(
          top: 0,
        ),
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0XFF121926),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomNavigationBarItem(
              isSelected: currentPage == 0,
              onPressed: () {
                homeController.setCurrentPage(0);
              },
            ),
            CustomNavigationBarItem(
              icon: Icons.shopping_bag_outlined,
              isSelected: currentPage == 1,
              onPressed: () {
                homeController.setCurrentPage(1);
              },
            ),
            CustomNavigationBarItem(
              icon: Icons.map_outlined,
              isSelected: currentPage == 2,
              onPressed: () {
                homeController.setCurrentPage(2);
              },
            ),
            CustomNavigationBarItem(
              icon: Icons.person_outline,
              isSelected: currentPage == 3,
              onPressed: () {
                homeController.setCurrentPage(3);
              },
            ),
          ],
        ),
      ),
    );
  }
}

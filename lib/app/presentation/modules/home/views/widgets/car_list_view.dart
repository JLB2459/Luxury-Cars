import 'dart:math';
import 'package:cars/app/domain/controllers/home/home_view_controller.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/cars_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarsListView extends StatefulWidget {
  const CarsListView({
    super.key,
  });

  @override
  State<CarsListView> createState() => _CarsListViewState();
}

class _CarsListViewState extends State<CarsListView> {
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      viewportFraction: 0.9,
    );
    _init();
  }

  void _init() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // ignore: unused_local_variable
      final homeViewController = Provider.of<HomeViewController>(
        context,
        listen: false,
      )..setCurrentSlider(pageController);
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final homeViewController = Provider.of<HomeViewController>(context);
    debugPrint('current slider: ${homeViewController.currentSlider}');

    return PageView.builder(
      itemCount: 5,
      controller: pageController,
      itemBuilder: (context, index) {
        final currentPage = homeViewController.currentSlider;
        final percent = 1 - (currentPage! - index);
        final value = percent.clamp(0, 1);
        final islightTheme = index.isOdd;

        return Opacity(
          opacity: value.toDouble(),
          child: Transform(
            transform: Matrix4.identity()
              ..rotateZ(
                pi * (value - 1),
              ),
            /* ..rotateX(
                pi / 4 * (1 - value),
              ), */
            child: CarsCard(
              asset:
                  'https://cdn.pixabay.com/photo/2015/10/01/17/17/car-967387_1280.png',
              carModel: 'Chevrolet Camaro',
              carLocation: 'Lima',
              carPrice: 54990,
              isLightTheme: islightTheme,
            ),
          ),
        );
      },
    );
  }
}

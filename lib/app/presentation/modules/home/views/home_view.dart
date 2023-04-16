import 'package:cars/app/data/services/remote/car_list_provider.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/animated_cars_carousel.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/animated_cars_sliver_grid.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/animated_recommendation_button.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/animated_search_field.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/my_custom_navigation_bar.dart';
import 'package:cars/app/presentation/modules/home/views/widgets/notification_bar_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF2F2F2),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  children: [
                    NotificationBarButton(
                      onTap: () {
                        debugPrint('notification pressed');
                      },
                      withNotification: true,
                    ),
                    const AnimatedSearchField()
                  ],
                ),
              ),
            ),
            const AnimatedCarsCarousel(),
            AnimatedRecommendationButton(
              onPressed: () {
                debugPrint('View all pressed');
              },
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              sliver: FutureBuilder<List<Map<String, dynamic>>>(
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const SliverToBoxAdapter(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    return const SliverToBoxAdapter(
                      child: Center(child: Icon(Icons.error)),
                    );
                  } else {
                    final carList = snapshot.data!;
                    return AnimatedCarsSliverGrid(
                      carList: carList,
                    );
                  }
                },
                future: CarListProvider().fetchCarList(),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const MyCustomNavigationBar(),
    );
  }
}

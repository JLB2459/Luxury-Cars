import 'package:cars/app/presentation/modules/details/details_view.dart';
import 'package:cars/app/presentation/modules/home/views/home_view.dart';
import 'package:cars/app/presentation/modules/navigator/views/navigator_view.dart';
import 'package:cars/app/presentation/modules/splash/views/splash_view.dart';
import 'package:cars/app/presentation/routes/routes.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> get appRoutes {
  return {
    Routes.splash: (context) => const SplashView(),
    Routes.home: (context) => const HomeView(),
    Routes.navigator: (context) => const NavigatorView(),
    Routes.details: (context) => const DetailsView(),
  };
}

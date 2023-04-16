import 'package:cars/app/presentation/modules/splash/views/widgets/get_started_button.dart';
import 'package:cars/app/presentation/modules/splash/views/widgets/sign_in_button.dart';
import 'package:cars/app/presentation/modules/splash/views/widgets/splash_car.dart';
import 'package:cars/app/presentation/modules/splash/views/widgets/splash_message.dart';
import 'package:cars/app/presentation/modules/splash/views/widgets/splash_slogan.dart';
import 'package:cars/app/presentation/modules/splash/views/widgets/splash_title.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF141C27),
      appBar: AppBar(
        backgroundColor: const Color(0XFF141C27),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              children: [
                const SplashTitle(),
                const SplashCar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                const SplashSlogan(),
                const SizedBox(
                  height: 20,
                ),
                const SplashMessage(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const GetStartedButton(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const SignInButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

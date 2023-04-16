import 'package:cars/app/presentation/global/utils/font_styles.dart';
import 'package:cars/app/presentation/routes/routes.dart';
import 'package:flutter/material.dart';

class NavigatorView extends StatelessWidget {
  const NavigatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              MaterialButton(
                minWidth: double.infinity,
                onPressed: () {
                  Navigator.pushNamed(context, Routes.splash);
                },
                color: Colors.blueAccent,
                child: Text(
                  'Splash View',
                  style: FontStyles.subtitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

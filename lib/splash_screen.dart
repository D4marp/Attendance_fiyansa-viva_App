import 'package:flutter/material.dart';

import '../../core/core.dart';
import './pages/login_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => context.pushReplacement(const LoginPage()),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Assets.images.logoWhite.image(),
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Assets.images.flutterLogo.image(height: 65),
             const SizedBox(height: 60), // Add some padding from the bottom
            ],
          ),
          const SpaceHeight(20.0),
        ],
      ),
    );
  }
}

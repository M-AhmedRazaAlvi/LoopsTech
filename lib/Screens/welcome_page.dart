import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/custom_text.dart';
import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF53B8BB),
              Color(0xFF5F98B8),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const FlutterLogo(
              size: 120.0,
              textColor: Colors.white,
            ),
            const SizedBox(height: 24.0),
            const CustomText(
              text: 'Welcome to LoopsTech',
              size: 24.0,
              weight: FontWeight.bold,
            ),
            const SizedBox(height: 16.0),
            const CustomText(
              text: 'Building innovative solutions',
            ),
            const SizedBox(height: 48.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const CustomText(text: 'Get Started'),
            ),
          ],
        ),
      ),
    );
  }
}

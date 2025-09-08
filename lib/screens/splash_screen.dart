import 'package:flutter/material.dart';

void main() {
  runApp(const SplashScreenApp());
}

class SplashScreenApp extends StatelessWidget {
  const SplashScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE0F2F7), // Light blue
              Color(0xFFFFE0B2), // Light peach
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Center box with S image and star
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFFFCC99), // peach color
                borderRadius: BorderRadius.circular(30),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // "S" image
                  Image.asset(
                    "assets/images/Vector (1).png", // <-- apna path daalna
                    width: 60,
                    height: 60,
                  ),

                  // Star image (top-right)
                  Positioned(
                    top: 28,
                    right: 28,
                    child: Image.asset(
                      "assets/images/star.png", // <-- apna path daalna
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),

            // Bottom line image
            Positioned(
              bottom: 20,
              child: Image.asset(
                "assets/images/line 1.png", // <-- apna path daalna
                width: 120,
                height: 8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

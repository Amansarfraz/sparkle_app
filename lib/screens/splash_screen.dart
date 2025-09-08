import 'package:flutter/material.dart';

void main() {
  runApp(const SplashApp());
}

class SplashApp extends StatelessWidget {
  const SplashApp({super.key});

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
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE0F2F7), // light blue top
              Color(0xFFFFE0B2), // peach bottom
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Center peach box with S and star
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: const Color(0xFFFFCC99), // peach box
                borderRadius: BorderRadius.circular(35),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // S image
                  Image.asset(
                    "assets/images/Vector (1).png", // apna path daalna
                    width: 70,
                    height: 70,
                  ),

                  // Star image (top right)
                  Positioned(
                    top: 25,
                    right: 25,
                    child: Image.asset(
                      "assets/images/star.png", // apna path daalna
                      width: 26,
                      height: 26,
                    ),
                  ),
                ],
              ),
            ),

            // Bottom line image
            Positioned(
              bottom: 30,
              child: Image.asset(
                "assets/images/line 1.png", // apna path daalna
                width: 140,
                height: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

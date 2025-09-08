import 'package:flutter/material.dart';
import 'dart:async';
import 'get_started_screen.dart'; // import get started screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const GetStartedScreen()),
      );
    });
  }

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
                color: const Color(0xFFFFCC99),
                borderRadius: BorderRadius.circular(35),
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    "assets/images/Vector (1).png",
                    width: 70,
                    height: 70,
                  ),
                  Positioned(
                    top: 15,
                    right: 25,
                    child: Image.asset(
                      "assets/images/star.png",
                      width: 26,
                      height: 26,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,
              child: Image.asset(
                "assets/images/line 1.png",
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

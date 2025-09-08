import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

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
            // Big cell image (full width according to UI)
            Positioned(
              top: 100,
              child: Image.asset(
                "assets/images/cell.png", // apna path daalna
                width: screenWidth, // full width
                height: 484,
                fit: BoxFit.contain,
              ),
            ),

            // White box at bottom
            Positioned(
              bottom: 0,
              child: Container(
                width: screenWidth, // full width
                height: 221,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Button 1 image (apna path daalna)
                    Image.asset(
                      "assets/images/button 1.png", // apna path daalna
                      width: 250,
                      height: 50,
                    ),
                    const SizedBox(height: 20),

                    // Second button (match size & shape of above image button)
                    SizedBox(
                      width: 250,
                      height: 50,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.lightBlue,
                            width: 2,
                          ),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          // Sign in action
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

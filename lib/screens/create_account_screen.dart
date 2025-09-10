import 'package:flutter/material.dart';
import 'sign_up_screen.dart';

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
          children: [
            // Cell wali image (bari height + background k sath blend)
            Positioned(
              top: 0,
              child: Image.asset(
                "assets/images/cell.png", // apna path daalna
                width: screenWidth,
                height: 520, // height barha di
                fit: BoxFit.cover,
              ),
            ),

            // White box neeche fixed height
            Positioned(
              bottom: 0,
              child: Container(
                width: screenWidth,
                height: 221, // fixed height wapas
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
                      width: 292,
                      height: 70,
                    ),
                    const SizedBox(height: 20),

                    // Sign in button (292x70 + aur round)
                    SizedBox(
                      width: 292,
                      height: 70,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.lightBlue,
                            width: 2,
                          ),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              40,
                            ), // aur round
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          ); // Sign in action
                        },
                        child: const Text(
                          "Sign in",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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

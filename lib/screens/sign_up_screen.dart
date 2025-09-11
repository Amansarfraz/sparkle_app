import 'package:flutter/material.dart';
import 'sign_up_screen2.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Back Button
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen2(),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                ],
              ),

              // Logo with star overlay inside rounded box
              Stack(
                alignment: Alignment.center,
                children: [
                  // Rounded box (background)
                  Container(
                    height: 92.72,
                    width: 92.72,
                    decoration: BoxDecoration(
                      color: Colors.orange[100], // change as per your design
                      borderRadius: BorderRadius.circular(
                        20,
                      ), // rounded corners
                    ),
                  ),

                  // S logo
                  Image.asset(
                    "assets/images/Vector (1).png",
                    height: 80,
                    width: 80,
                  ),

                  // Star (top-right)
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/star.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Title
              const Text(
                "Let's Get Started",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),

              // Subtitle
              const Text(
                "CHOOSE AN OPTION TO SIGN UP",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 30),

              // Phone Button
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen2(),
                    ),
                  );
                },
                icon: const Icon(Icons.phone, color: Colors.black54),
                label: const Text(
                  "Phone Number",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  elevation: 0,
                ),
              ),
              const SizedBox(height: 15),

              // Email Button
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen2(),
                    ),
                  );
                },
                icon: const Icon(Icons.email_outlined, color: Colors.black54),
                label: const Text(
                  "Email",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue[100],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                  elevation: 0,
                ),
              ),
              const SizedBox(height: 20),

              // Already have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "ALREADY HAVE AN ACCOUNT? ",
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              const Spacer(),

              // Middle Circle Button
              Container(
                height: 60,
                width: 60,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    "S",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Or Continue With
              const Text(
                "Or continue with Google or Apple",
                style: TextStyle(fontSize: 13, color: Colors.black54),
              ),
              const SizedBox(height: 12),

              // Social Icons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/Group.png", height: 40, width: 40),
                  const SizedBox(width: 20),
                  Image.asset("assets/images/apple.png", height: 40, width: 40),
                ],
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}

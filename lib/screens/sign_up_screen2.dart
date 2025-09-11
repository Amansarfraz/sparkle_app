import 'package:flutter/material.dart';
import 'verify_number_screen.dart';

class SignUpScreen2 extends StatelessWidget {
  const SignUpScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Back arrow
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerifyNumberScreen(),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 20),

              // Top Mustard Square with S and Star
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.orange[100], // mustard color
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  children: [
                    // S in the center
                    Center(
                      child: Image.asset(
                        "assets/images/Vector (1).png", // <-- Path for "S"
                        width: 36,
                        height: 36,
                      ),
                    ),
                    // Star at top-left
                    Positioned(
                      top: 5,
                      right: 5,
                      child: Image.asset(
                        "assets/images/star.png", // <-- Path for "Star"
                        width: 16,
                        height: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Title
              const Text(
                "Let’s Get Started",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              const SizedBox(height: 8),

              const Text(
                "CHOOSE AN OPTION TO SIGN UP",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),

              const SizedBox(height: 24),

              // Phone number (disabled style)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.black38),
                    SizedBox(width: 12),
                    Text(
                      "Phone Number",
                      style: TextStyle(color: Colors.black38, fontSize: 14),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Email input
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.email_outlined,
                    color: Colors.black54,
                  ),
                  hintText: "Email",
                  hintStyle: const TextStyle(color: Colors.black54),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.lightBlueAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Password input
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                    color: Colors.black54,
                  ),
                  hintText: "Password",
                  hintStyle: const TextStyle(color: Colors.black54),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 16,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.lightBlueAccent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(color: Colors.lightBlueAccent),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Terms and Conditions
              Row(
                children: const [
                  Icon(Icons.circle_outlined, size: 20, color: Colors.black54),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "By signing up, you agree to the Terms of Service and Privacy Policy",
                      style: TextStyle(fontSize: 11, color: Colors.black54),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Create Account Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerifyNumberScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "Create an Account",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Already have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "ALREADY HAVE AN ACCOUNT? ",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    "SIGN IN",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // OR continue
              const Text(
                "Or continue with Google or Apple",
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),

              const SizedBox(height: 12),

              // Google + Apple buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/Group.png", // <-- Google icon path
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 24),
                  Image.asset(
                    "assets/images/apple.png", // <-- Apple icon path
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'verify_code_screen.dart';

class VerifyNumberScreen extends StatelessWidget {
  const VerifyNumberScreen({super.key});

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
              // Back Arrow + Title + Star
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 4,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Text(
                      "S",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Title
              const Text(
                "Let's Get Started",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 32),

              // Enter Your Number Label
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter Your Number",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Phone Field
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    DropdownButton<String>(
                      value: "IN +91",
                      underline: const SizedBox(),
                      items: const [
                        DropdownMenuItem(
                          value: "IN +91",
                          child: Text("IN +91"),
                        ),
                        DropdownMenuItem(
                          value: "PK +92",
                          child: Text("PK +92"),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                    const VerticalDivider(),
                    const Expanded(
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter number",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              // Description
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "We’ll text you a verification code",
                  style: TextStyle(color: Colors.black54, fontSize: 14),
                ),
              ),
              const SizedBox(height: 12),

              // Checkbox + Terms
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.circle_outlined, size: 18, color: Colors.black45),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      "By signing up, you agree to the Terms of Service and Privacy Policy",
                      style: TextStyle(color: Colors.black54, fontSize: 12),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Verify Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VerifyCodeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE0F2F7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: const Text(
                    "Verify",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // 👇 Image updated with width fit
              Image.asset(
                "assets/images/number.png",
                height: 336,
                width: 393,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

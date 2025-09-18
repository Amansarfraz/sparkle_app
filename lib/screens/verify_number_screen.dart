import 'package:flutter/material.dart';

class VerifyNumberScreen extends StatefulWidget {
  const VerifyNumberScreen({super.key});

  @override
  State<VerifyNumberScreen> createState() => _VerifyNumberScreenState();
}

class _VerifyNumberScreenState extends State<VerifyNumberScreen> {
  final TextEditingController _phoneController = TextEditingController();

  void _addNumber(String number) {
    setState(() {
      _phoneController.text += number;
    });
  }

  void _deleteNumber() {
    setState(() {
      if (_phoneController.text.isNotEmpty) {
        _phoneController.text = _phoneController.text.substring(
          0,
          _phoneController.text.length - 1,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  const Icon(Icons.arrow_back, color: Colors.black),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(10),
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
            ),

            const SizedBox(height: 12),

            // Title
            const Text(
              "Let's Get Started",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 24),

            // Enter Number Label
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Enter Your Number",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Input Field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
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
                    Expanded(
                      child: TextField(
                        controller: _phoneController,
                        readOnly: true,
                        keyboardType: TextInputType.none,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Enter number",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 8),

            // Description
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "We’ll text you a verification code",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
            ),

            const SizedBox(height: 12),

            // Terms & Checkbox
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
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
            ),

            const SizedBox(height: 16),

            // Verify Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue[100],
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
            ),

            const Spacer(),

            // Custom Keypad
            Container(
              height: 260,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFD1D3D9),
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              child: Column(
                children: [
                  // Suggestion Row
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 6,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "From Messages  123 456",
                          style: TextStyle(fontSize: 14, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 12,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            childAspectRatio: 1.8,
                          ),
                      itemBuilder: (context, index) {
                        if (index == 9) {
                          return const SizedBox();
                        } else if (index == 11) {
                          return IconButton(
                            onPressed: _deleteNumber,
                            icon: const Icon(
                              Icons.backspace,
                              color: Colors.black,
                            ),
                          );
                        } else {
                          String number = (index == 10)
                              ? "0"
                              : (index + 1).toString();
                          return InkWell(
                            onTap: () => _addNumber(number),
                            child: Center(
                              child: Text(
                                number,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

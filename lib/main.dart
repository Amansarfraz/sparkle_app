import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/get_started_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/sign_up_screen2.dart';

void main() {
  runApp(const SparkleApp());
}

class SparkleApp extends StatelessWidget {
  const SparkleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparkle App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins', primarySwatch: Colors.brown),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/get_started_screen': (context) => const GetStartedScreen(),
        '/sign_up_screen': (context) => const SignUpScreen(),
        '/sign_up_screen2': (context) => const SignUpScreen2(),
      },
    );
  }
}

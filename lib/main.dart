import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

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
      routes: {'/': (context) => const SplashScreen()},
    );
  }
}

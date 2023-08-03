import 'dart:async';

import 'package:flutter/material.dart';
import 'package:petsync_customer/constants/image.dart';

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
      Navigator.pushReplacementNamed(context, '/dashboard');
      /* Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingScreen())); */
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(logo, width: 150),
      ),
    );
  }
}

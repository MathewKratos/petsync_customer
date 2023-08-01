import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petsync_customer/screens/dashboard_screen/dashboard_screen.dart';
import 'package:petsync_customer/screens/onboarding_screen/onboarding_screen.dart';
import 'package:petsync_customer/screens/splash_screen/splash_screen.dart';
import 'package:petsync_customer/screens/verification_screen/number_verification/number_screen.dart';
import 'package:petsync_customer/screens/verification_screen/otp_screen.dart';

void main() {
  runApp(const PetsyncApp());
}

class PetsyncApp extends StatelessWidget {
  const PetsyncApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.loraTextTheme(),
      ),
      // home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/landing': (context) => const OnboardingScreen(),
        '/login': (context) => const NumberScreen(),
        '/otp': (context) => const OtpScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}

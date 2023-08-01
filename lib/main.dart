import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petsync_customer/screens/verification_screen/number_verification/number_screen.dart';

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
      home: const NumberScreen(),
    );
  }
}

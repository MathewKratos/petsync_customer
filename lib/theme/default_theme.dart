import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultTheme {
  static final themeData = ThemeData(
    fontFamily: GoogleFonts.jost().fontFamily,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.w700, fontSize: 16, color: Colors.black),
        elevation: 0),
  );
}

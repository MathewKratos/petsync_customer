import 'package:flutter/material.dart';
import 'package:petsync_customer/constants/app_page.dart';
import 'package:petsync_customer/constants/app_route.dart';
import 'package:petsync_customer/theme/default_theme.dart';

void main() {
  runApp(const PetsyncApp());
}

class PetsyncApp extends StatelessWidget {
  const PetsyncApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: DefaultTheme.themeData,
      themeMode: ThemeMode.light,
      initialRoute: AppRoute.splash,
      routes: AppPage().getApplicationRoutes(),
    );
  }
}

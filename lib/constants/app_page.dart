import 'package:flutter/material.dart';
import 'package:petsync_customer/constants/app_route.dart';
import 'package:petsync_customer/screens/dashboard/dashboard_screen.dart';
import 'package:petsync_customer/screens/onboarding/onboarding_screen.dart';
import 'package:petsync_customer/screens/settings/edit_profile/edit_profile.dart';
import 'package:petsync_customer/screens/splash/splash_screen.dart';
import 'package:petsync_customer/screens/verification/number_verification/number_screen.dart';
import 'package:petsync_customer/screens/verification/otp_screen.dart';

class AppPage {
  Map<String, WidgetBuilder> getApplicationRoutes() {
    return <String, WidgetBuilder>{
      AppRoute.splash: (context) => const SplashScreen(),
      AppRoute.onboarding: (context) => const OnboardingScreen(),
      AppRoute.login: (context) => const NumberScreen(),
      AppRoute.otp: (context) => const OtpScreen(),
      AppRoute.dashboard: (context) => const DashboardScreen(),
      AppRoute.editProfile: (context) => const EditProfile(),
    };
  }
}

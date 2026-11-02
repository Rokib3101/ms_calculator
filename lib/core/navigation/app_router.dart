import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/calculators/age_calculator/screens/age_calculator_screen.dart';
import '../../features/calculators/basic_calculator/screens/calculator_screen.dart';
import '../../features/calculators/basic_calculator/screens/converter_list_screen.dart';
import '../../features/calculators/basic_calculator/screens/tools_screen.dart';
import '../../features/calculators/bmi_calculator/screens/bmi_calculator_screen.dart';
import '../../features/converter/screens/single_converter_screen.dart';
import '../../features/dashboard/presentation/screens/about_screen.dart';
import '../../features/dashboard/presentation/screens/privacy_policy_screen.dart';
import '../../features/dashboard/presentation/screens/settings_screen.dart';
import '../../features/dashboard/presentation/screens/social_media_screen.dart';

abstract class AppRoutes {
  static const String calculator = '/';
  static const String tools = '/tools';
  static const String privacyPolicy = '/privacy-policy';
  static const String about = '/about';
  static const String socialMedia = '/social-media';
  static const String settings = '/settings';

  static const String converterList = '/converter-list';
  static const String ageCalc = '/age-calc';
  static const String bmiCalc = '/bmi-calc';

  static const String converterLength = '/converter/length';
  static const String converterArea = '/converter/area';
  static const String converterVolume = '/converter/volume';
  static const String converterMass = '/converter/mass';
  static const String converterTemp = '/converter/temp';
  static const String converterTime = '/converter/time';
  static const String converterSpeed = '/converter/speed';
  static const String converterPressure = '/converter/pressure';
  static const String converterEnergy = '/converter/energy';
}

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.calculator,
    routes: [
      GoRoute(
        path: AppRoutes.calculator,
        builder: (context, state) => const CalculatorScreen(),
      ),
      GoRoute(
        path: AppRoutes.tools,
        builder: (context, state) => const ToolsScreen(),
      ),
      GoRoute(
        path: AppRoutes.about,
        builder: (context, state) => const AboutScreen(),
      ),
      GoRoute(
        path: AppRoutes.socialMedia,
        builder: (context, state) => const SocialMediaScreen(),
      ),
      GoRoute(
        path: AppRoutes.privacyPolicy,
        builder: (context, state) => const PrivacyPolicyScreen(),
      ),
      GoRoute(
        path: AppRoutes.settings,
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: AppRoutes.converterList,
        builder: (context, state) => const ConverterListScreen(),
      ),
      GoRoute(
        path: AppRoutes.ageCalc,
        builder: (context, state) => const AgeCalculatorScreen(),
      ),
      GoRoute(
        path: AppRoutes.bmiCalc,
        builder: (context, state) => const BmiCalculatorScreen(),
      ),
      GoRoute(
        path: AppRoutes.converterLength,
        builder: (context, state) =>
            const SingleConverterScreen(type: 'length'),
      ),
      GoRoute(
        path: AppRoutes.converterArea,
        builder: (context, state) => const SingleConverterScreen(type: 'area'),
      ),
      GoRoute(
        path: AppRoutes.converterVolume,
        builder: (context, state) =>
            const SingleConverterScreen(type: 'volume'),
      ),
      GoRoute(
        path: AppRoutes.converterMass,
        builder: (context, state) => const SingleConverterScreen(type: 'mass'),
      ),
      GoRoute(
        path: AppRoutes.converterTemp,
        builder: (context, state) => const SingleConverterScreen(type: 'temp'),
      ),
      GoRoute(
        path: AppRoutes.converterTime,
        builder: (context, state) => const SingleConverterScreen(type: 'time'),
      ),
      GoRoute(
        path: AppRoutes.converterSpeed,
        builder: (context, state) => const SingleConverterScreen(type: 'speed'),
      ),
      GoRoute(
        path: AppRoutes.converterPressure,
        builder: (context, state) =>
            const SingleConverterScreen(type: 'pressure'),
      ),
      GoRoute(
        path: AppRoutes.converterEnergy,
        builder: (context, state) =>
            const SingleConverterScreen(type: 'energy'),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(child: Text('Route not found: ${state.uri}')),
    ),
  );
}

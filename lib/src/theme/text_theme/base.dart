import 'package:flutter/material.dart';

@immutable
abstract class BaconBaseTextTheme {
  const BaconBaseTextTheme({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.displayXSmall,
    required this.headlineXXLarge,
    required this.headlineXLarge,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.headlineXSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.bodyXSmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
    required this.labelXSmall,
  });

  final TextStyle displayXSmall;
  final TextStyle headlineXXLarge;
  final TextStyle headlineXLarge;
  final TextStyle headlineXSmall;
  final TextStyle bodyXSmall;
  final TextStyle labelXSmall;
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;
}

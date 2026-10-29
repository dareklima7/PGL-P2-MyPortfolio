import 'package:flutter/material.dart';

/// Paleta de la app. Si los colores de tu diseño (PDF) son otros,
/// cámbialos SOLO aquí y se actualiza toda la app.
class AppColors {
  static const primary = Color(0xFF0077B6); // azul océano
  static const secondary = Color(0xFFFF9F1C); // naranja atardecer
  static const success = Color(0xFF2E7D32);
  static const error = Color(0xFFC62828);
  static const warning = Color(0xFFF9A825);
  static const info = Color(0xFF0288D1);
  static const background = Color(0xFFF5F7FA);
  static const textPrimary = Color(0xFF1B1B1F);
  static const disabled = Color(0xFF9E9E9E);
}

final ThemeData appTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.error,
  ),
  scaffoldBackgroundColor: AppColors.background,
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.primary,
    foregroundColor: Colors.white,
  ),
  textTheme: const TextTheme().apply(
    bodyColor: AppColors.textPrimary,
    displayColor: AppColors.textPrimary,
  ),
);

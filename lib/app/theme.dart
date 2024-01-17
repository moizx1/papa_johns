// app_theme.dart

import 'package:flutter/material.dart';
import 'package:papa_johns/constants/app_constants.dart';

class AppTheme {
  static ThemeData theme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.white,
      useMaterial3: true,
      cardTheme: const CardTheme(
        surfaceTintColor: AppColors.white,
      ),
    );
  }
}

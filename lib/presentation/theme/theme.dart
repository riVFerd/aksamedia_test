import 'package:flutter/material.dart';

import 'color_theme.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: ColorTheme.primary).copyWith(
    primary: ColorTheme.primary,
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      padding: const EdgeInsets.symmetric(vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);
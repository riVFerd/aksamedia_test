import 'package:aksamedia_test/presentation/theme/color_theme.dart';
import 'package:flutter/material.dart';

final theme = ThemeData(
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: ColorTheme.primary950,
      padding: const EdgeInsets.symmetric(vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);
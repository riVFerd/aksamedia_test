import 'package:flutter/material.dart';

import '../theme/color_theme.dart';
import '../theme/text_style_theme.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({
    super.key,
    required this.label,
    required this.text,
    this.bgColor = ColorTheme.yellow,
  });

  final String label;
  final String text;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide.none,
      backgroundColor: bgColor,
      label: Text.rich(
        TextSpan(
          text: '$label ',
          style: TextStyleTheme.regular.copyWith(
            fontWeight: FontWeight.w700,
          ),
          children: [
            TextSpan(
                text: text,
                style: TextStyleTheme.small
            ),
          ],
        ),
      ),
    );
  }
}

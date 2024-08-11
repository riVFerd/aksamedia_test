import 'package:flutter/material.dart';

import '../theme/color_theme.dart';
import '../theme/text_style_theme.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({
    super.key,
    required this.label,
    required this.text,
    this.bgColor = ColorTheme.secondary500,
    this.labelStyle,
    this.textStyle,
  });

  final String label;
  final String text;
  final Color bgColor;
  final TextStyle? labelStyle;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text.rich(
        TextSpan(
          text: '$label ',
          style: labelStyle ?? TextStyleTheme.regular.copyWith(
            fontWeight: FontWeight.w700,
          ),
          children: [
            TextSpan(
                text: text,
                style: textStyle ?? TextStyleTheme.small
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:aksamedia_test/presentation/components/custom_divider.dart';
import 'package:aksamedia_test/presentation/theme/color_theme.dart';
import 'package:aksamedia_test/presentation/theme/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    final textDesc =
        '*New Material*\nTerbuat dari bahan 100% Katun Linen yang membuat nyaman jika digunakan. Menggunakan fit Relaxed Fit.\nSIZE CHART RELAXED SHIRT....';
    return Column(
      children: [
        const CustomDivider(width: double.infinity, verticalMargin: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Deskripsi', style: TextStyleTheme.regular),
            SvgPicture.asset('assets/icons/copy.svg', height: 24, width: 24),
          ],
        ),
        const SizedBox(height: 16),
        Text(textDesc, style: TextStyleTheme.small),
        const SizedBox(height: 16),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Selengkapnya', style: TextStyleTheme.small.copyWith(color: ColorTheme.info500)),
            const SizedBox(width: 8),
            const Icon(Icons.keyboard_arrow_down, color: ColorTheme.info500),
          ],
        ),
        const CustomDivider(width: double.infinity, verticalMargin: 16),
      ],
    );
  }
}

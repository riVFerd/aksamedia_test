import 'package:aksamedia_test/presentation/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/text_style_theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      width: 160,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/product-1.png', width: 160, height: 160),
          const SizedBox(height: 6),
          Text('Beauty Set by Irvie ', style: TextStyleTheme.xSmall),
          const SizedBox(height: 8),
          Text('Harga reseller', style: TextStyleTheme.tiny.copyWith(color: ColorTheme.primary500)),
          Row(
            children: [
              Text(
                'Rp 142.400',
                style: TextStyleTheme.small.copyWith(
                  color: ColorTheme.success600,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              SvgPicture.asset('assets/icons/catalog.svg', width: 12, height: 12),
              const SizedBox(width: 4),
              Text(
                '99+ pcs',
                style: TextStyleTheme.tiny.copyWith(color: ColorTheme.primary500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

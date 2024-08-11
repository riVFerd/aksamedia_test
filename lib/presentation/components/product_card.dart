import 'package:aksamedia_test/common/extensions/widget_extension.dart';
import 'package:aksamedia_test/presentation/components/custom_label.dart';
import 'package:aksamedia_test/presentation/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../theme/text_style_theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.isNew});

  final bool isNew;

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
          Stack(
            children: [
              Image.asset('assets/images/product-1.png', width: 160, height: 160),
              Positioned(
                bottom: 6,
                left: 6,
                child: CustomLabel(
                  label: '30%',
                  text: 'Komisi',
                  bgColor: ColorTheme.info500,
                  labelStyle: TextStyleTheme.tiny.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
                  textStyle: TextStyleTheme.tiny.copyWith(color: Colors.white),
                ),
              ),
              Positioned(
                top: 0,
                right: 6,
                child: SvgPicture.asset('assets/icons/new-label.svg', width: 32, height: 32),
              ),
            ],
          ),
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
          const SizedBox(height: 6),
          FilledButton(
            onPressed: () => {},
            child: Text(
              'Bagikan Produk',
              style: TextStyleTheme.small.copyWith(color: Colors.white),
            ),
          ).sized(w: double.infinity),
        ],
      ),
    );
  }
}

import 'package:aksamedia_test/common/extensions/widget_extension.dart';
import 'package:aksamedia_test/presentation/theme/text_style_theme.dart';
import 'package:flutter/material.dart';

import '../../../components/product_card.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Produk lain dari Irvie group official', style: TextStyleTheme.regular),
        const SizedBox(height: 16),
        ListView.separated(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) => const SizedBox(width: 20),
          itemBuilder: (_, index) {
            return ProductCard(
              isNew: index % 2 != 0,
            );
          },
        ).sized(h: 300),

        Text('Produk Serupa', style: TextStyleTheme.regular),
        const SizedBox(height: 16),
        ListView.separated(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (_, __) => const SizedBox(width: 20),
          itemBuilder: (_, index) {
            return ProductCard(
              isNew: index % 2 == 0,
            );
          },
        ).sized(h: 300),
      ],
    );
  }
}

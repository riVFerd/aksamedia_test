import 'package:aksamedia_test/common/extensions/context_extension.dart';
import 'package:aksamedia_test/common/extensions/widget_extension.dart';
import 'package:aksamedia_test/presentation/screens/product/widgets/price_detail.dart';
import 'package:aksamedia_test/presentation/screens/product/widgets/product_banner.dart';
import 'package:aksamedia_test/presentation/screens/product/widgets/product_description.dart';
import 'package:aksamedia_test/presentation/screens/product/widgets/product_list.dart';
import 'package:aksamedia_test/presentation/screens/product/widgets/product_option.dart';
import 'package:aksamedia_test/presentation/theme/color_theme.dart';
import 'package:aksamedia_test/presentation/theme/text_style_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../components/custom_label.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  static const path = '/product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/download.svg', height: 24, width: 24),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/cart.svg', height: 24, width: 24),
            onPressed: () {},
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductBanner(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  PriceDetail(),
                  const SizedBox(height: 18),
                  ProductOption(),
                  ProductDescription(),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ProductList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

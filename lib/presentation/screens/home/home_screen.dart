import 'package:aksamedia_test/common/extensions/context_extension.dart';
import 'package:aksamedia_test/common/extensions/widget_extension.dart';
import 'package:aksamedia_test/presentation/screens/product/product_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

import '../../components/carousel_images.dart';
import '../../components/carousel_indicator.dart';
import '../../theme/text_style_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const path = '/';

  @override
  Widget build(BuildContext context) {
    final bannerImages = [
      'assets/images/banner-1.png',
      'assets/images/banner-2.png',
      'assets/images/banner-3.png',
    ];
    final currentBannerIndex = ValueNotifier<int>(0);

    return Scaffold(
      body: Stack(
        children: [
          CarouselImages(
            images: bannerImages,
            onPageChanged: (index, _) => currentBannerIndex.value = index,
          ).sized(h: context.height * 0.8),
          Positioned(
            right: 20,
            top: 12,
            child: Text(
              'Lewati',
              style: TextStyleTheme.regular,
            ).safeArea(),
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                ValueListenableBuilder(
                  valueListenable: currentBannerIndex,
                  builder: (_, index, __) {
                    return CarouselIndicator(
                      length: bannerImages.length,
                      currentIndex: index,
                    );
                  },
                ),
                const SizedBox(height: 21),
                Container(
                  width: context.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 34),
                  child: Column(
                    children: [
                      Text(
                        'Gratis Materi Belajar Menjadi Seller Handal',
                        style: TextStyleTheme.title3,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 18),
                      Text(
                        'Nggak bisa jualan? Jangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya',
                        style: TextStyleTheme.regular.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 35),
                      FilledButton(
                        onPressed: () => context.pushNamed(ProductScreen.path),
                        child: Text('Selanjutnya', style: TextStyleTheme.small),
                      ).sized(w: double.infinity),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ).sized(h: context.height, w: context.width),
    );
  }
}

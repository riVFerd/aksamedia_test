import 'package:aksamedia_test/common/extensions/context_extension.dart';
import 'package:aksamedia_test/common/extensions/widget_extension.dart';
import 'package:aksamedia_test/presentation/screens/product/product_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../components/carousel_images.dart';
import '../../components/carousel_indicator.dart';
import '../../theme/text_style_theme.dart';

// avoid reinitializing the controller on build method since not using any state management / hooks
final carouselController = CarouselSliderController();

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
    final listTitle = [
      "Gratis Materi Belajar Menjadi Seller Handal",
      "Ribuan Produk dengan Kualitas Terbaik",
      "Toko Online Unik Untuk Kamu Jualan",
    ];
    final listDesc = [
      "Nggak bisa jualan? Jangan khawatir, Tokorame akan membimbing kamu hingga menjadi seller langsung dari ahlinya",
      "Tokorame menyediakan ribuan produk dengan kualitas derbaik dari seller terpercaya",
      "Subdomain unik dan toko online profesional siap pakai",
    ];
    final currentBannerIndex = ValueNotifier<int>(0);

    return Scaffold(
      body: Stack(
        children: [
          CarouselImages(
            carouselController: carouselController,
            images: bannerImages,
            autoPlay: false,
            enableInfiniteScroll: false,
            onPageChanged: (index, _) => currentBannerIndex.value = index,
          ).sized(h: context.height * 0.8),
          Positioned(
            right: 20,
            top: 12,
            child: TextButton(
              onPressed: () => context.pushNamed(ProductScreen.path),
              child: Text(
                'Lewati',
                style: TextStyleTheme.regular,
              ),
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
                  height: context.height * 0.3,
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
                      ValueListenableBuilder(
                        valueListenable: currentBannerIndex,
                        builder: (_, i, __) {
                          return Text(
                            listTitle[i],
                            style: TextStyleTheme.title3,
                            textAlign: TextAlign.center,
                          );
                        }
                      ),
                      const SizedBox(height: 18),
                      ValueListenableBuilder(
                        valueListenable: currentBannerIndex,
                        builder: (_, i, __) {
                          return Text(
                            listDesc[i],
                            style: TextStyleTheme.regular.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          );
                        }
                      ),
                      const Spacer(),
                      FilledButton(
                        onPressed: () {
                          if (currentBannerIndex.value == bannerImages.length - 1) {
                            context.pushNamed(ProductScreen.path);
                          } else {
                            currentBannerIndex.value = currentBannerIndex.value + 1;
                            carouselController.nextPage();
                          }
                        },
                        child: Text(
                          'Selanjutnya',
                          style: TextStyleTheme.small.copyWith(color: Colors.white),
                        ),
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

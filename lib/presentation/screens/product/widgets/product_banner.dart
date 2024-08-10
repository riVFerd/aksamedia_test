import 'package:aksamedia_test/common/extensions/context_extension.dart';
import 'package:aksamedia_test/common/extensions/widget_extension.dart';
import 'package:flutter/material.dart';

import '../../../components/carousel_images.dart';
import '../../../components/carousel_indicator.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final productImages = [
      'assets/images/product-1.png',
      'assets/images/product-1.png',
      'assets/images/product-1.png',
      'assets/images/product-1.png',
    ];
    final currentImageIndex = ValueNotifier<int>(0);
    return Stack(
      children: [
        Container(
          child: CarouselImages(
            images: productImages,
            onPageChanged: (index, _) => currentImageIndex.value = index,
          ).sized(h: 376),
        ),
        Positioned(
          bottom: 0,
          child: Column(
            children: [
              ValueListenableBuilder(
                valueListenable: currentImageIndex,
                builder: (_, index, __) {
                  return CarouselIndicator(
                    length: productImages.length,
                    currentIndex: index,
                  );
                },
              ),
              const SizedBox(height: 20),
              Container(
                height: 20,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
              ),
            ],
          ).sized(w: context.width),
        ),
      ],
    );
  }
}

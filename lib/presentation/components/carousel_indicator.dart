import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselIndicator extends StatelessWidget {
  const CarouselIndicator({
    super.key,
    required this.length,
    required this.currentIndex,
  });

  final int length;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: length,
      effect: const ExpandingDotsEffect(
        dotHeight: 4,
        dotWidth: 4,
        expansionFactor: 5,
        activeDotColor: Colors.white,
      ),
    );
  }
}
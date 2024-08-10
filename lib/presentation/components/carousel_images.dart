import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatelessWidget {
  const CarouselImages({
    super.key,
    required this.images,
    this.onPageChanged,
  });

  final List<String> images;
  final Function(int, CarouselPageChangedReason)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: List.generate(
        images.length,
            (index) {
          return Image.asset(
            images[index],
            width: double.maxFinite,
            height: MediaQuery.sizeOf(context).height / 3,
            fit: BoxFit.cover,
          );
        },
      ),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: false,
        viewportFraction: 1,
        height: double.maxFinite,
        onPageChanged: onPageChanged,
      ),
    );
  }
}
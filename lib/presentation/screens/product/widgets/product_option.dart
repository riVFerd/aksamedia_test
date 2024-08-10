import 'package:aksamedia_test/common/extensions/widget_extension.dart';
import 'package:aksamedia_test/presentation/theme/color_theme.dart';
import 'package:aksamedia_test/presentation/theme/text_style_theme.dart';
import 'package:flutter/material.dart';

class ProductOption extends StatelessWidget {
  const ProductOption({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedPackage = ValueNotifier<int>(0);
    final selectedColor = ValueNotifier<int>(0);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 26),
      decoration: BoxDecoration(
        border: Border.all(color: ColorTheme.neutral200),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Ukuran', style: TextStyleTheme.small),
          const SizedBox(height: 10),
          Row(
            children: [
              ...List.generate(2, (i) {
                return ValueListenableBuilder(
                  valueListenable: selectedPackage,
                  builder: (_, selected, __) {
                    return buildPackageButton(
                      selected: selected,
                      currentIndex: i,
                      onSelected: () => selectedPackage.value = i,
                    );
                  },
                );
              }),
            ].addSeparator(
              const SizedBox(width: 13),
            ),
          ),
          const SizedBox(height: 14),
          Text('Warna', style: TextStyleTheme.small),
          const SizedBox(height: 10),
          Row(
            children: [
              ...List.generate(2, (i) {
                return ValueListenableBuilder(
                  valueListenable: selectedColor,
                  builder: (_, selected, __) {
                    return buildColorButton(
                      selected: selected,
                      currentIndex: i,
                      onSelected: () => selectedColor.value = i,
                    );
                  },
                );
              }),
            ].addSeparator(
              const SizedBox(width: 13),
            ),
          ),
          const SizedBox(height: 14),
          Text.rich(
            TextSpan(
              text: 'Stock : ',
              children: [
                TextSpan(
                  text: '99+ pcs',
                  style: TextStyleTheme.small.copyWith(fontWeight: FontWeight.w700),
                ),
              ]
            ),
            style: TextStyleTheme.small,
          ),
        ],
      ),
    );
  }

  FilledButton buildPackageButton({
    required int selected,
    required int currentIndex,
    required Function() onSelected,
  }) {
    return FilledButton(
      style: FilledButton.styleFrom(
        backgroundColor: ColorTheme.primary100,
        fixedSize: const Size(97, 27),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        side: BorderSide(
          width: 2,
          color: selected == currentIndex ? ColorTheme.primary950 : Colors.transparent,
        ),
      ),
      onPressed: onSelected,
      child: Text(
        'Paket ${currentIndex + 1}',
        style: TextStyleTheme.small.copyWith(
          color: selected == currentIndex ? ColorTheme.primary950 : ColorTheme.gray700,
        ),
      ),
    );
  }

  GestureDetector buildColorButton({
    required int selected,
    required int currentIndex,
    required Function() onSelected,
  }) {
    return GestureDetector(
      onTap: onSelected,
      child: Container(
        width: 44,
        height: 44,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: selected == currentIndex ? ColorTheme.primary950 : Colors.transparent,
          ),
          color: currentIndex == 0 ? const Color(0xFFDDB69A) : const Color(0xFF5B3E36),
        ),
      ),
    );
  }
}

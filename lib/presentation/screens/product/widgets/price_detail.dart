import 'package:aksamedia_test/common/extensions/widget_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../components/custom_label.dart';
import '../../../theme/color_theme.dart';
import '../../../theme/text_style_theme.dart';

class PriceDetail extends StatelessWidget {
  const PriceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const CustomLabel(
              label: 'New',
              text: 'Product Baru',
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/share.svg', height: 24, width: 24),
            )
          ],
        ),
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Beauty Set by Irvie',
                style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              Text(
                'Irvie group official',
                style: TextStyleTheme.small.copyWith(color: ColorTheme.primary400),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildPriceColumn(
              price: 'Rp178.000',
              label: 'Harga Customer',
            ),
            Container(
              width: 1,
              height: 44,
              color: ColorTheme.primary500,
            ),
            buildPriceColumn(
              price: 'Rp142.400',
              label: 'Harga Reseller',
            ),
          ],
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 7),
          decoration: const BoxDecoration(
            color: ColorTheme.yellow,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
          ),
          child: Text.rich(
            TextSpan(text: 'Komisi ', children: [
              TextSpan(
                text: 'Rp35.600',
                style: GoogleFonts.inter(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              const TextSpan(text: ' (20%)'),
            ]),
            style: TextStyleTheme.small,
          ),
        ),
      ].addSeparator(
        const SizedBox(height: 14),
      ),
    );
  }

  Column buildPriceColumn({
    required String price,
    required String label,
  }) {
    return Column(
      children: [
        Text(
          price,
          style: TextStyleTheme.regular.copyWith(fontWeight: FontWeight.w700),
        ),
        Text(
          label,
          style: TextStyleTheme.small.copyWith(color: ColorTheme.primary500),
        ),
      ],
    );
  }
}
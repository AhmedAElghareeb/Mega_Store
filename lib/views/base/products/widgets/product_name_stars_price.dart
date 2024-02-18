import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/design/styles.dart';

class ProductNameStarsPrice extends StatelessWidget {
  const ProductNameStarsPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Product Name will display here ",
              style: Styles.textStyle16W700.copyWith(
                color: const Color(0xFF333537),
                fontSize: 20,
                height: 1.5,
              ),
            ),
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(
                "assets/icons/favorites.svg",
                width: 24.w,
                height: 24.h,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Row(
          children: [
            ...List.generate(
              4,
                  (index) => const Icon(
                Icons.star,
                color: Color(0xffFFC833),
              ),
            ),
            const Icon(
              Icons.star,
              color: Color(0xffEBF0FF),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$299,43",
              style: Styles.textStyle16W700.copyWith(
                color: const Color(0xFF333537),
                fontSize: 20,
                height: 1.5,
              ),
            ),
            Row(
              children: [
                Text(
                  "\$534,33",
                  style: Styles.textStyle12W400.copyWith(
                    fontSize: 10,
                    height: 1.5,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "24% Off",
                  style: Styles.textStyles10W700.copyWith(
                    color: const Color(0xffFB7181),
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
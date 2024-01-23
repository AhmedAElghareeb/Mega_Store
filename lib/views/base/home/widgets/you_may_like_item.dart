import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/design/styles.dart';

class YouMayLikeItem extends StatelessWidget {
  const YouMayLikeItem({
    super.key,
    required this.images,
    required this.title,
    required this.priceAfterDiscount,
    required this.priceBeforeDiscount,
    required this.discount,
  });

  final List<String> images;
  final List<String> title;
  final List<String> priceAfterDiscount;
  final List<String> priceBeforeDiscount;
  final List<String> discount;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "You May Like ",
          style: Styles.textStyle14W700.copyWith(
            color: const Color(0xFF50555C),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.67,
            crossAxisSpacing: 5.w,
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, iii) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 155.w,
                    height: 162.h,
                    child: Image.network(
                      images[iii],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    highlightColor: Colors.white,
                    splashColor: Colors.white,
                    icon: SvgPicture.asset(
                      "assets/icons/favorites.svg",
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                title[iii],
                style: Styles.textStyle12W400.copyWith(
                    color: const Color(0xFF223263),
                    fontWeight: FontWeight.w700,
                    height: 1.5),
              ),
              Text(
                priceAfterDiscount[iii],
                style: Styles.textStyle12W400.copyWith(
                  color: const Color(0xFF50555C),
                  fontWeight: FontWeight.w700,
                  height: 1.5,
                ),
              ),
              Row(
                children: [
                  Text(
                    priceBeforeDiscount[iii],
                    style: Styles.textStyles10W700.copyWith(
                      color: const Color(0xFF9098B1),
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    discount[iii],
                    style: Styles.textStyles10W700.copyWith(
                      color: const Color(0xFFFB7181),
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ],
          ),
          itemCount: images.length,
        ),
      ],
    );
  }
}
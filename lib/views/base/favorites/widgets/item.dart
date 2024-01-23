import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/design/styles.dart';

class FavoritesItem extends StatelessWidget {
  const FavoritesItem({
    super.key,
    required this.images,
    required this.title,
    required this.priceAfterDiscount,
    required this.priceBeforeDiscount,
    required this.discount, required this.index,
  });

  final List<String> images;
  final List<String> title;
  final List<String> priceAfterDiscount;
  final List<String> priceBeforeDiscount;
  final List<String> discount;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: 155.w,
                height: 162.h,
                child: Image.network(
                  images[index],
                ),
              ),
              IconButton(
                onPressed: () {},
                highlightColor: Colors.white,
                splashColor: Colors.white,
                icon: SvgPicture.asset(
                  "assets/icons/trash.svg",
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          Text(
            title[index],
            style: Styles.textStyle12W400.copyWith(
                color: const Color(0xFF223263),
                fontWeight: FontWeight.w700,
                height: 1.5),
          ),
          Text(
            priceAfterDiscount[index],
            style: Styles.textStyle12W400.copyWith(
              color: const Color(0xFF50555C),
              fontWeight: FontWeight.w700,
              height: 1.5,
            ),
          ),
          Row(
            children: [
              Text(
                priceBeforeDiscount[index],
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
                discount[index],
                style: Styles.textStyles10W700.copyWith(
                  color: const Color(0xFFFB7181),
                  height: 1.5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
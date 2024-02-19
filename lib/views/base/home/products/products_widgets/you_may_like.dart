import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:mega_store/core/design/styles.dart';

class YouMightLike extends StatelessWidget {
  const YouMightLike({
    super.key,
    required this.images,
    required this.title,
    required this.priceAfterSale,
    required this.price,
    required this.sale,
  });

  final List<String> images;
  final List<String> title;
  final List<String> priceAfterSale;
  final List<String> price;
  final List<String> sale;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsetsDirectional.only(
            end: 14.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  CachedNetworkImage(
                    imageUrl: images[index],
                    width: 141.w,
                    height: 143.h,
                    placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                    const Icon(Icons.error),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: 8.w,
                        top: 10.h,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/favorites.svg",
                        width: 18.w,
                        height: 12.h,
                        color: const Color(0xffFFFFFF),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                title[index],
                style: Styles.textStyle12W400.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff223263),
                  height: 1.5,
                ),
              ),
              Text(
                priceAfterSale[index],
                style: Styles.textStyle12W400.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff50555C),
                  height: 1.5,
                ),
              ),
              Row(
                children: [
                  Text(
                    price[index],
                    style: Styles.textStyles10W700.copyWith(
                        color: const Color(0xff9098B1),
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                        decoration: TextDecoration.lineThrough
                    ),
                  ),
                  Text(
                    sale[index],
                    style: Styles.textStyles10W700.copyWith(
                      color: const Color(0xffFB7181),
                      height: 1.5,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        itemCount: title.length,
      ),
    );
  }
}
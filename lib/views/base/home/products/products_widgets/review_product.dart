import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/home/products/reviews.dart';

class ReviewProduct extends StatelessWidget {
  const ReviewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Review Product",
              style: Styles.textStyle14W700.copyWith(
                color: const Color(0xff223263),
                height: 2.1,
              ),
            ),
            TextButton(
              onPressed: () {
                navigateTo(
                  const ReviewsView(),
                );
              },
              child: Text(
                "See More",
                style: Styles.textStyle12W400.copyWith(
                  color: const Color(0xff898A8D),
                  fontWeight: FontWeight.w700,
                  height: 1.8,
                ),
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
            SizedBox(
              width: 8.w,
            ),
            Text(
              "4.5",
              style: Styles.textStyles10W700.copyWith(
                height: 1.5,
                color: const Color(0xff9098B1),
              ),
            ),
            SizedBox(
              width: 3.w,
            ),
            Text(
              "(5 Review)",
              style: Styles.textStyle12W400.copyWith(
                fontSize: 10,
                height: 1.5,
                color: const Color(0xff9098B1),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 17.h,
        ),
        Row(
          children: [
            CircleAvatar(
              radius: 24.r,
              child: CachedNetworkImage(
                imageUrl:
                    "https://avatars.mds.yandex.net/get-images-cbir/3253639/dzf3YFjXhirip4NGsOawVQ4178/ocr",
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            SizedBox(
              width: 16.w,
            ),
            Column(
              children: [
                Text(
                  "James Lawson",
                  style: Styles.textStyle14W700.copyWith(
                    color: const Color(0xff223263),
                    height: 2.1,
                  ),
                ),
                SizedBox(
                  height: 4.h,
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
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
          style: Styles.textStyle12W400.copyWith(
            height: 2.1,
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          "December 10, 2016",
          style: Styles.textStyle12W400.copyWith(
            fontSize: 10,
            height: 2.1,
          ),
        ),
      ],
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(
          imageUrl:
          "https://avatars.mds.yandex.net/get-images-cbir/3954109/kMcZ2hNiPeMJLwfQHdBSwQ1987/ocr",
          placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        SizedBox(
          height: 21.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              5,
                  (index) => Padding(
                padding: EdgeInsetsDirectional.symmetric(horizontal: 4.w),
                child: CircleAvatar(
                  radius: 5.r,
                  backgroundColor: index == 2
                      ? const Color(0xFFED1C24)
                      : const Color(0xFF979797),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
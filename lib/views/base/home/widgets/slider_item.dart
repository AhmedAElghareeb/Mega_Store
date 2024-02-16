import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderItem extends StatelessWidget {
  const SliderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          imageUrl: "https://avatars.mds.yandex.net/get-images-cbir/2255891/hieXrW_5GQPCuxjpa5xNVg1429/ocr",
          fit: BoxFit.cover,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
        SizedBox(
          height: 7.h,
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
                      ? const Color(0xFF979797)
                      : const Color(0xFF50555C),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
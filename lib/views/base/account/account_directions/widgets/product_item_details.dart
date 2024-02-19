import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';

class ProductItemDetails extends StatelessWidget {
  const ProductItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 110.h,
      margin: EdgeInsetsDirectional.only(bottom: 12.h),
      padding: EdgeInsetsDirectional.symmetric(horizontal: 12.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: const Color(0xffEBF0FF))),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: "https://alsaa.net/image/pic_72541.jpg",
            width: 68.w,
            height: 72.h,
            fit: BoxFit.fill,
            placeholder: (context, url) =>
            const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
          SizedBox(
            width: 14.w,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nike Air Zoom Pegasus 36 Miami",
                style: Styles.textStyle12W400.copyWith(
                    height: 1.8,
                    color: const Color(
                      0xff223263,
                    ),
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 14.h,
              ),
              Text(
                "\$299,43",
                style: Styles.textStyle12W400.copyWith(
                    height: 1.8,
                    color: const Color(
                      0xff000000,
                    ),
                    fontWeight: FontWeight.w700),
              ),
            ],
          )
        ],
      ),
    );
  }
}

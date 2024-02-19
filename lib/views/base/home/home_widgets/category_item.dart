import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/home/products/view.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (context, i) => InkWell(
          onTap: () {
            navigateTo(
              const ProductsView(),
            );
          },
          child: Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 8.w),
            child: Column(
              children: [
                Container(
                  width: 90.w,
                  height: 90.h,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(
                      50.r,
                    ),
                  ),
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://helios-i.mashable.com/imagery/articles/01kf4YIfmq5NBkZ7x2zsQWx/hero-image.fill.size_1200x1200.v1665065228.jpg",
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                const Text(
                  "Category \n Name",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/home/products/view.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {

    List<String> images = [
      "https://helios-i.mashable.com/imagery/articles/01kf4YIfmq5NBkZ7x2zsQWx/hero-image.fill.size_1200x1200.v1665065228.jpg",
      "https://81.img.avito.st/image/1/1.fCH2era60MjA0xLNgmcoBi7Z1sxCWdgKR9nUwELR0g.aiBDh3hqVGUDUgD3g7NHMGjj772TjnlDESwOwYDa4YA",
      "https://33.img.avito.st/image/1/EDlR7baBvNAnSE7WfdUeJLJOuNbzSLzWlC241idITtbnSrDU50y8lA",
      "https://avatars.mds.yandex.net/i?id=5d3cd14cf1458c1a72693b8734a52da14e630a25-9065891-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=5d3cd14cf1458c1a72693b8734a52da14e630a25-9065891-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=5d3cd14cf1458c1a72693b8734a52da14e630a25-9065891-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=5d3cd14cf1458c1a72693b8734a52da14e630a25-9065891-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=5d3cd14cf1458c1a72693b8734a52da14e630a25-9065891-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=5d3cd14cf1458c1a72693b8734a52da14e630a25-9065891-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=5d3cd14cf1458c1a72693b8734a52da14e630a25-9065891-images-thumbs&n=13",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "All Categories",
          style: Styles.textStyle16W700,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            "assets/icons/arrow_left.svg",
          ),
        ),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.67,
          ),
          itemBuilder: (context, index) => InkWell(
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
                      imageUrl: images[index],
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
      ),
    );
  }
}

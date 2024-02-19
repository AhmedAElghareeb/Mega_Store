import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mega_store/core/design/app_input.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/home/home_widgets/category_item.dart';
import 'package:mega_store/views/base/home/home_widgets/flash_sale_item.dart';
import 'package:mega_store/views/base/home/home_widgets/slider_item.dart';
import 'package:mega_store/views/base/home/home_widgets/you_may_like_item.dart';
import 'package:mega_store/views/base/home/search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "FS - Nike Air Max 270 \n React",
      "FS - Nike Air Max 270 \n React",
      "FS - Nike Air Max 270 \n React",
      "FS - Nike Air Max 270 \n React",
    ];
    List<String> images = [
      "https://avatars.mds.yandex.net/i?id=b1aaf5a58cc0996025bf6d489cf42f0a-5869069-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=b1aaf5a58cc0996025bf6d489cf42f0a-5869069-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=b1aaf5a58cc0996025bf6d489cf42f0a-5869069-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=b1aaf5a58cc0996025bf6d489cf42f0a-5869069-images-thumbs&n=13",
    ];
    List<String> priceAfterDiscount = [
      "\$299,43",
      "\$299,43",
      "\$299,43",
      "\$299,43",
    ];
    List<String> priceBeforeDiscount = [
      "\$534,33",
      "\$534,33",
      "\$534,33",
      "\$534,33",
    ];
    List<String> discount = [
      "24% Off",
      "24% Off",
      "24% Off",
      "24% Off",
    ];

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 87.h,
        title: AppInput(
          labelText: "Search Product",
          prefixIcon: "search.svg",
          isFilled: true,
          isEnabled: false,
          onTap: () {
            navigateTo(
              const SearchView(),
            );
          },
        ),
        automaticallyImplyLeading: false,
        actions: [
          Stack(
            children: [
              Center(
                child: IconButton(
                  onPressed: () {},
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  icon: SvgPicture.asset(
                    "assets/icons/cart.svg",
                    width: 24.w,
                    height: 24.h,
                  ),
                ),
              ),
              Container(
                width: 20.w,
                height: 20.h,
                margin: EdgeInsetsDirectional.only(
                  top: 21.h,
                  start: 21.w,
                ),
                decoration: const ShapeDecoration(
                  color: Color(0xFFFB7181),
                  shape: OvalBorder(
                    side: BorderSide(
                      width: 2,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    "2",
                    style: Styles.textStyles10W700
                        .copyWith(color: Colors.white, height: 1.5),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
          children: [
            const SliderItem(),
            SizedBox(
              height: 10.h,
            ),
            const CategoryItem(), //CategoryItems
            SizedBox(
              height: 20.h,
            ),
            CachedNetworkImage(
              imageUrl:
                  "https://avatars.mds.yandex.net/i?id=3128795db888383ce5b3eabefceb3a02a02d18c0-10414799-images-thumbs&n=13",
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            SizedBox(
              height: 23.h,
            ),
            FlashSaleItem(
              images: images,
              title: title,
              priceAfterDiscount: priceAfterDiscount,
              priceBeforeDiscount: priceBeforeDiscount,
              discount: discount,
            ),
            SizedBox(
              height: 29.h,
            ),
            YouMayLikeItem(
                images: images,
                title: title,
                priceAfterDiscount: priceAfterDiscount,
                priceBeforeDiscount: priceBeforeDiscount,
                discount: discount),
          ],
        ),
      ),
    );
  }
}

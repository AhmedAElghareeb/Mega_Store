import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/views/base/home/products/products_widgets/details.dart';
import 'package:mega_store/views/base/home/products/products_widgets/product_images.dart';
import 'package:mega_store/views/base/home/products/products_widgets/product_name_stars_price.dart';
import 'package:mega_store/views/base/home/products/products_widgets/review_product.dart';
import 'package:mega_store/views/base/home/products/products_widgets/you_may_like.dart';


class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://avatars.mds.yandex.net/get-images-cbir/3075952/osvR6yOYmVAKU6EQfixtpA5211/ocr",
      "https://avatars.mds.yandex.net/get-images-cbir/3075952/osvR6yOYmVAKU6EQfixtpA5211/ocr",
      "https://avatars.mds.yandex.net/get-images-cbir/3075952/osvR6yOYmVAKU6EQfixtpA5211/ocr",
    ];

    List<String> title = [
      "FS - Nike Air Max 270 \nReact",
      "FS - Nike Air Max 270 \nReact",
      "FS - Nike Air Max 270 \nReact",
    ];

    List<String> priceAfterSale = [
      "\$299,43",
      "\$299,43",
      "\$299,43",
    ];

    List<String> price = [
      "\$534,33",
      "\$534,33",
      "\$534,33",
    ];

    List<String> sale = [
      "24% Off",
      "24% Off",
      "24% Off",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Name ....",
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
        child: ListView(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 13.w),
          children: [
            const ProductImages(),
            SizedBox(
              height: 3.h,
            ),
            const ProductNameStarsPrice(),
            SizedBox(
              height: 22.h,
            ),
            const Details(),
            SizedBox(
              height: 15.h,
            ),
            const ReviewProduct(),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "You Might Also Like",
              style: Styles.textStyle14W700.copyWith(
                color: const Color(0xff223263),
                height: 2.1,
              ),
            ),
            SizedBox(
              height: 17.h,
            ),
            YouMightLike(
              images: images,
              title: title,
              priceAfterSale: priceAfterSale,
              price: price,
              sale: sale,
            ),
            SizedBox(
              height: 50.h,
            ),
            AppButton(
              onPress: (){},
              text: "Add To Cart",
              bgColor: const Color(0xffBA6400),
            ),
          ],
        ),
      ),
    );
  }
}

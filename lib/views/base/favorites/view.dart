import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/views/base/favorites/widgets/item.dart';
import '../../../core/design/styles.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "FS - Nike Air Max 270 React",
      "FS - Nike Air Max 270 React",
      "FS - Nike Air Max 270 React",
    ];
    List<String> images = [
      "https://avatars.mds.yandex.net/i?id=b1aaf5a58cc0996025bf6d489cf42f0a-5869069-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=b1aaf5a58cc0996025bf6d489cf42f0a-5869069-images-thumbs&n=13",
      "https://avatars.mds.yandex.net/i?id=b1aaf5a58cc0996025bf6d489cf42f0a-5869069-images-thumbs&n=13",
    ];
    List<String> priceAfterDiscount = [
      "\$299,43",
      "\$299,43",
      "\$299,43",
    ];
    List<String> priceBeforeDiscount = [
      "\$534,33",
      "\$534,33",
      "\$534,33",
    ];
    List<String> discount = [
      "24% Off",
      "24% Off",
      "24% Off",
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 26.w,
                top: 30.h,
                bottom: 28.h,
              ),
              child: const Text(
                "Favorites List",
                style: Styles.textStyle16W700,
              ),
            ),
            const Divider(),
            SizedBox(
              height: 17.h,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.67,
                  crossAxisSpacing: 5.w,
                ),
                itemBuilder: (context, index) => FavoritesItem(
                  images: images,
                  title: title,
                  priceAfterDiscount: priceAfterDiscount,
                  priceBeforeDiscount: priceBeforeDiscount,
                  discount: discount,
                  index: index,
                ),
                itemCount: images.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

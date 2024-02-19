import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_store/views/base/products/widgets/one_category_item.dart';

import '../../../core/design/styles.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

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
      appBar: AppBar(
        title: const Text(
          "Category Name",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.70,
                ),
                itemBuilder: (context, index) => Item(
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

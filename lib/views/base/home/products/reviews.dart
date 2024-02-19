import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/home/products/products_widgets/one_review_item.dart';
import 'package:mega_store/views/base/home/products/write_review.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://avatars.mds.yandex.net/get-images-cbir/3253639/dzf3YFjXhirip4NGsOawVQ4178/ocr",
      "https://avatars.mds.yandex.net/get-images-cbir/3253639/dzf3YFjXhirip4NGsOawVQ4178/ocr",
      "https://avatars.mds.yandex.net/get-images-cbir/3253639/dzf3YFjXhirip4NGsOawVQ4178/ocr",
      "https://avatars.mds.yandex.net/get-images-cbir/3253639/dzf3YFjXhirip4NGsOawVQ4178/ocr",
    ];

    List<String> names = [
      "James Lawson",
      "Laura Octavian",
      "Jonson Bridge",
      "Griffin Rod",
    ];

    List<String> body = [
      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
      "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.",
    ];

    List<String> date = [
      "December 10, 2016",
      "December 10, 2016",
      "December 10, 2016",
      "December 10, 2016",
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Number of Reviews",
          style: Styles.textStyle16W700.copyWith(
            height: 1.5,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18.r,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsetsDirectional.only(
            start: 16.w,
            end: 16.w,
            top: 20.h,
            bottom: 20.h,
          ),
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => Item(
                images: images,
                names: names,
                body: body,
                date: date,
                index: index,
              ),
              itemCount: names.length,
            ),
            SizedBox(
              height: 16.h,
            ),
            AppButton(
              text: "Write a Review",
              onPress: () {
                navigateTo(
                  const WriteReview(),
                );
              },
              bgColor: const Color(0xffBA6400),
            ),
          ],
        ),
      ),
    );
  }
}

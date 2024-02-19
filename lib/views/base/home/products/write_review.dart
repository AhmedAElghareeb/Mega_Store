import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/app_input.dart';
import 'package:mega_store/core/design/styles.dart';

class WriteReview extends StatelessWidget {
  const WriteReview({super.key});

  @override
  Widget build(BuildContext context) {
    final reviewController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Write Review",
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
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
          children: [
            Text(
              "Please write Overall level of satisfaction with your shipping / Delivery Service",
              style: Styles.textStyle14W700.copyWith(
                color: const Color(0xff223263),
                height: 2.1,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                ...List.generate(
                  4,
                  (index) => Icon(
                    Icons.star,
                    size: 32.r,
                    color: const Color(0xffFFC833),
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Color(0xffEBF0FF),
                ),
                SizedBox(
                  width: 16.w,
                ),
                Text(
                  "4.5",
                  style: Styles.textStyle14W700.copyWith(
                    height: 2,
                    color: const Color(0xff9098B1),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Write Your Review",
              style: Styles.textStyle14W700.copyWith(
                color: const Color(0xff223263),
                height: 2.1,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            AppInput(
              controller: reviewController,
              labelText: "Write your review here",
              validator: (value) {
                if (value!.isEmpty) {
                  return "This Field is Required";
                }
                return null;
              },
              maxLines: 5,
            ),
            SizedBox(
              height: 20.h,
            ),
            AppButton(
              text: "Send Review",
              onPress: () {},
              bgColor: const Color(0xffBA6400),
            ),
          ],
        ),
      ),
    );
  }
}

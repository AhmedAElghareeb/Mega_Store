import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';

class ChangeLangSection extends StatelessWidget {
  const ChangeLangSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: 310.h,
            padding: EdgeInsetsDirectional.only(
                start: 16.w, end: 16.w, top: 29.h, bottom: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "choose language",
                  style: Styles.textStyle14W700.copyWith(
                      color: const Color(
                        0xff223263,
                      ),
                      height: 2.1),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  width: 343.w,
                  height: 48.h,
                  padding: EdgeInsetsDirectional.only(
                    start: 22.w,
                    end: 13.w,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(color: const Color(0xffEBF0FF))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "ENGLISH",
                        style: Styles.textStyle16W700.copyWith(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          height: 2,
                          color: const Color(0xff9098B1),
                        ),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: const Color(0xffB7B7B7),
                        size: 25.r,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 59.h,
                ),
                AppButton(
                  text: "Save",
                  onPress: () {},
                  bgColor: const Color(0xffBA6400),
                ),
              ],
            ),
          ),
        );
      },
      child: Row(
        children: [
          Icon(
            Icons.language,
            color: const Color(0xffBA6400),
            size: 25.r,
          ),
          SizedBox(
            width: 16.w,
          ),
          Text(
            "Change Lang",
            style: Styles.textStyle16W700.copyWith(
                fontSize: 12, height: 1.8, color: const Color(0xff223263)),
          ),
        ],
      ),
    );
  }
}
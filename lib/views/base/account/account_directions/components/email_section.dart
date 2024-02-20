import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/app_input.dart';
import 'package:mega_store/core/design/styles.dart';

class EmailSection extends StatelessWidget {
  const EmailSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: 361.h,
            padding: EdgeInsetsDirectional.only(
                start: 16.w, end: 16.w, top: 29.h, bottom: 24.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Change Email",
                  style: Styles.textStyle14W700.copyWith(
                      color: const Color(
                        0xff223263,
                      ),
                      height: 2.1),
                ),
                SizedBox(
                  height: 12.h,
                ),
                AppInput(
                  controller: emailController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "This Field is Required";
                    }
                    return null;
                  },
                  prefixIcon: "message.svg",
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
          SvgPicture.asset(
            "assets/icons/message.svg",
            color: const Color(0xffBA6400),
          ),
          SizedBox(
            width: 16.w,
          ),
          Text(
            "Email",
            style: Styles.textStyle16W700.copyWith(
                fontSize: 12, height: 1.8, color: const Color(0xff223263)),
          ),
          SizedBox(
            width: 88.w,
          ),
          Text(
            "rex4dom@gmail.com",
            style: Styles.textStyle12W400.copyWith(
              height: 1.8,
            ),
          ),
          SizedBox(
            width: 25.w,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 18.r,
            color: const Color(0xff9098B1),
          ),
        ],
      ),
    );
  }
}
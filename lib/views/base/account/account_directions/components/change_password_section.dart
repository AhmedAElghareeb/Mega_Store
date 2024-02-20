import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/app_input.dart';
import 'package:mega_store/core/design/styles.dart';

class ChangePasswordSection extends StatelessWidget {
  const ChangePasswordSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "Old Password",
      "New Password",
      "New Password Again",
    ];

    List<TextEditingController> controller = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) => Container(
            height: 469.h,
            padding: EdgeInsetsDirectional.only(
                start: 16.w, end: 16.w, top: 29.h, bottom: 24.h),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, idx) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title[idx],
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
                          controller: controller[idx],
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "This Field is Required";
                            }
                            return null;
                          },
                          prefixIcon: "lock.svg",
                        ),
                      ],
                    ),
                    itemCount: title.length,
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
          SvgPicture.asset(
            "assets/icons/lock.svg",
          ),
          SizedBox(
            width: 16.w,
          ),
          Text(
            "Change Password",
            style: Styles.textStyle16W700.copyWith(
                fontSize: 12, height: 1.8, color: const Color(0xff223263)),
          ),
          SizedBox(
            width: 51.w,
          ),
          Text(
            "•••••••••••••••••",
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
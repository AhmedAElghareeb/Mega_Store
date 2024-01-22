import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/design/styles.dart';

class DividerWithOtherLogin extends StatelessWidget {
  const DividerWithOtherLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 134,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFEAEFFF),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 28.w,
            ),
            Text(
              "OR",
              style: Styles.textStyle14W700.copyWith(
                color: const Color(0xFF9098B1),
              ),
            ),
            SizedBox(
              width: 28.w,
            ),
            Container(
              width: 134,
              decoration: const ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    strokeAlign: BorderSide.strokeAlignCenter,
                    color: Color(0xFFEAEFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 343.w,
            height: 57.h,
            padding: EdgeInsetsDirectional.all(16.r),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFEAEFFF)),
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24.w,
                  height: 24.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4.w,
                        top: 4.h,
                        child: SizedBox(
                          width: 16.w,
                          height: 16.h,
                          child: SvgPicture.asset(
                            "assets/icons/google.svg",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                SizedBox(
                  width: 270.w,
                  child: Text(
                    'Login with Google',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle14W700.copyWith(
                      color: const Color(0xFF9098B1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 343.w,
            height: 57.h,
            padding: EdgeInsetsDirectional.all(16.r),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFEAEFFF)),
                borderRadius: BorderRadius.circular(5.r),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 24.w,
                  height: 24.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 4.w,
                        top: 4.h,
                        child: SizedBox(
                          width: 16.w,
                          height: 16.h,
                          child: SvgPicture.asset(
                            "assets/icons/facebook.svg",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10.w),
                SizedBox(
                  width: 270.w,
                  child: Text(
                    'Login with facebook',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle14W700.copyWith(
                      color: const Color(0xFF9098B1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
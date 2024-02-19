import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';

class CouponInput extends StatelessWidget {
  const CouponInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final couponController = TextEditingController();
    return TextFormField(
      controller: couponController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.r)),
        icon: SizedBox(
          width: 87.w,
          child: AppButton(
            text: "Apply",
            onPress: () {},
            bgColor: const Color(0xffBA6400),
          ),
        ),
        label: const Text(
          "Enter Coupon Code",
          style: Styles.textStyle12W400,
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';

class ShippingDetails extends StatelessWidget {
  const ShippingDetails({
    super.key,
    required this.shippingDetTexts,
    required this.shippingDet,
  });

  final List<String> shippingDetTexts;
  final List<String> shippingDet;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 150.h,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 10.h,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: const Color(0xffEBF0FF))),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, ii) => Padding(
          padding: EdgeInsetsDirectional.only(bottom: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                shippingDetTexts[ii],
                style: Styles.textStyle12W400.copyWith(
                  height: 2.1,
                  color: const Color(
                    0xff223263,
                  ),
                ),
              ),
              Text(
                shippingDet[ii],
                style: Styles.textStyle12W400.copyWith(
                  height: 2.1,
                  color: const Color(
                    0xff223263,
                  ),
                ),
              ),
            ],
          ),
        ),
        itemCount: shippingDetTexts.length,
      ),
    );
  }
}

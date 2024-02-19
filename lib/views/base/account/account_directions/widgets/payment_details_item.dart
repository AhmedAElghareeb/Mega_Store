import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    super.key,
    required this.paymentDetText,
    required this.paymentDet,
  });

  final List<String> paymentDetText;
  final List<String> paymentDet;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 164.h,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          border: Border.all(color: const Color(0xffEBF0FF))),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, idx) => Padding(
          padding: EdgeInsetsDirectional.only(bottom: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                paymentDetText[idx],
              ),
              Text(
                paymentDet[idx],
              ),
            ],
          ),
        ),
        itemCount: paymentDetText.length,
      ),
    );
  }
}
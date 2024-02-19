import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';

class InvoiceDetails extends StatelessWidget {
  const InvoiceDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 200.h,
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: const Color(0xffEBF0FF),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Items (3)",
                style: Styles.textStyle12W400,
              ),
              Text(
                "\$598.86",
                style: Styles.textStyle12W400.copyWith(
                    color: const Color(0xff223263), height: 2.1),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Shipping",
                style: Styles.textStyle12W400,
              ),
              Text(
                "\$40.00",
                style: Styles.textStyle12W400.copyWith(
                    color: const Color(0xff223263), height: 2.1),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Import charges",
                style: Styles.textStyle12W400,
              ),
              Text(
                "\$128.00",
                style: Styles.textStyle12W400.copyWith(
                    color: const Color(0xff223263), height: 2.1),
              ),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(40, (index) => const Text("-",),),
            ],
          ),
          SizedBox(
            height: 12.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Price",
                style: Styles.textStyle12W400.copyWith(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff223263,),
                    height: 1.8
                ),
              ),
              Text(
                "\$766.86",
                style: Styles.textStyle12W400.copyWith(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff40BFFF,),
                    height: 1.8
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
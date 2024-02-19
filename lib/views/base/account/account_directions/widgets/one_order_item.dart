import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/account/account_directions/orders_details.dart';

class OneOrderItem extends StatelessWidget {
  const OneOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> text = [
      "Order Status",
      "Items",
    ];

    List<String> desc = [
      "Shipping",
      "2 Items purchased",
    ];

    return InkWell(
      onTap: () {
        navigateTo(
          const OrdersDetailsView(),
        );
      },
      child: Container(
        width: 344.w,
        height: 250.h,
        margin: EdgeInsetsDirectional.symmetric(
          horizontal: 16.w,
          vertical: 16.h,
        ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LQNSU346JK",
              style: Styles.textStyle14W700.copyWith(
                color: const Color(0xff223263),
                height: 2.1,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              "Order at E-comm : August 1, 2017",
              style: Styles.textStyle12W400.copyWith(
                color: const Color(0xff223263),
                height: 2.1,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  43,
                  (index) => const Text(
                    "-",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            ...List.generate(
              text.length,
              (i) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text[i],
                    style: Styles.textStyle12W400.copyWith(
                      color: const Color(0xff223263),
                      height: 2.1,
                    ),
                  ),
                  Text(
                    desc[i],
                    style: Styles.textStyle12W400.copyWith(
                      color: const Color(0xff223263),
                      height: 2.1,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Price",
                  style: Styles.textStyle12W400.copyWith(
                    color: const Color(0xff223263),
                    height: 2.1,
                  ),
                ),
                Text(
                  "\$299,43",
                  style: Styles.textStyle12W400.copyWith(
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000),
                    height: 2.1,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

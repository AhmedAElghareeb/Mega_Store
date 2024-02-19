import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/home/home_view/cart/ship_to.dart';
import 'package:mega_store/views/base/home/home_view/cart/widgets/coupon_input.dart';
import 'package:mega_store/views/base/home/home_view/cart/widgets/invoice_details.dart';
import 'package:mega_store/views/base/home/home_view/cart/widgets/one_item.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "https://alsaa.net/image/pic_72541.jpg",
      "https://alsaa.net/image/pic_72541.jpg",
    ];

    List<String> body = [
      "Nike Air Zoom Pegasus \n36 Miami",
      "Nike Air Zoom Pegasus \n36 Miami",
    ];

    List<String> price = [
      "\$299,43",
      "\$299,43",
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 16.w),
          children: [
            SizedBox(
              height: 20.h,
            ),
            const Text(
              "Your Cart",
              style: Styles.textStyle20W600,
            ),
            SizedBox(
              height: 12.h,
            ),
            const Divider(
              thickness: 1.5,
            ),
            SizedBox(
              height: 16.h,
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => CartItem(
                index: index,
                body: body,
                images: images,
                price: price,
              ),
              itemCount: body.length,
            ),
            SizedBox(
              height: 32.h,
            ),
            const CouponInput(),
            SizedBox(
              height: 16.h,
            ),
            const InvoiceDetails(),
            SizedBox(
              height: 16.h,
            ),
            AppButton(
              text: "Check Out",
              onPress: ()
              {
                navigateTo(const ShipToView(),);
              },
              bgColor: const Color(0xffBA6400),
            ),
          ],
        ),
      ),
    );
  }
}

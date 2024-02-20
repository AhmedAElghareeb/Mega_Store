import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/views/base/account/account_directions/components/payment_details_item.dart';
import 'package:mega_store/views/base/account/account_directions/components/product_item_details.dart';
import 'package:mega_store/views/base/account/account_directions/components/shipping_details_item.dart';

class OrdersDetailsView extends StatelessWidget {
  const OrdersDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> shippingDetTexts = [
      "Date Shipping",
      "Shipping",
      "No. Resi",
      "Address",
    ];

    List<String> shippingDet = [
      "January 16, 2020",
      "POS Reggular",
      "000192848573",
      "2727 New  Owerri, Owerri, Imo State 78410",
    ];

    List<String> paymentDetText = [
      "Items (3)",
      "Shipping",
      "Import charges",
      "Total Price"
    ];

    List<String> paymentDet = ["\$598.86", "\$40.00", "\$128.00", "\$766.86"];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Order Details",
          style: Styles.textStyle16W700.copyWith(
            height: 1.5,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 18.r,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 16.w,
            vertical: 16.h,
          ),
          children: [
            Text(
              "Product",
              style: Styles.textStyle14W700
                  .copyWith(color: const Color(0xff223263), height: 2.1),
            ),
            SizedBox(
              height: 12.h,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) => const ProductItemDetails(),
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Shipping Details",
              style: Styles.textStyle14W700
                  .copyWith(color: const Color(0xff223263), height: 2.1),
            ),
            SizedBox(
              height: 12.h,
            ),
            ShippingDetails(
              shippingDetTexts: shippingDetTexts,
              shippingDet: shippingDet,
            ),
            SizedBox(
              height: 24.h,
            ),
            Text(
              "Payment Details",
              style: Styles.textStyle14W700
                  .copyWith(color: const Color(0xff223263), height: 2.1),
            ),
            SizedBox(
              height: 24.h,
            ),
            PaymentDetails(
              paymentDetText: paymentDetText,
              paymentDet: paymentDet,
            ),
          ],
        ),
      ),
    );
  }
}
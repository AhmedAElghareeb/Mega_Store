import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/views/base/account/account_directions/components/address_fields.dart';

class AddAddressView extends StatelessWidget {
  const AddAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "Country or region",
      "Street Address",
      "Street Address 2 (Optional)",
      "State/Province/Region",
      "City",
      "Zip Code",
      "Phone Number",
    ];

    List<TextEditingController> controller = [
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
      TextEditingController(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Address",
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
            vertical: 20.h,
          ),
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, i) => AddressFields(
                title: title,
                i: i,
                controller: controller,
              ),
              itemCount: title.length,
            ),
            SizedBox(
              height: 54.h,
            ),
            AppButton(
              text: "Add Address",
              bgColor: const Color(0xffBA6400),
              onPress: () {},
            ),
          ],
        ),
      ),
    );
  }
}

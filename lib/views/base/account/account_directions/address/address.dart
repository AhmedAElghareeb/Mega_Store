import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/account/account_directions/address/add_address.dart';
import 'package:mega_store/views/base/home/home_view/cart/widgets/address_item.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Address",
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
          padding:
              EdgeInsetsDirectional.symmetric(horizontal: 16.w, vertical: 16.h),
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const AddressItem(),
              itemCount: 2,
            ),
            AppButton(
              text: "Add Address",
              bgColor: const Color(0xffBA6400),
              onPress: () {
                navigateTo(
                  const AddAddressView(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

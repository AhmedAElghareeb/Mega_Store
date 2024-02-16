import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/design/styles.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> title = [
      "Profile",
      "My Orders",
      "Address",
      "Log out",
      "Delete Account",
    ];

    List<String> icons = [
      "person.svg",
      "orders.svg",
      "address.svg",
      "logout.svg",
      "delete_account.svg",
    ];

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 26.w,
                top: 70.h,
                bottom: 28.h,
              ),
              child: const Text(
                "Account",
                style: Styles.textStyle16W700,
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsetsDirectional.only(
                    start: 16.w,
                    top: 16.h,
                    bottom: 20.h,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/${icons[index]}",
                        width: 30.w,
                        height: 30.h,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        title[index],
                        style: Styles.textStyle12W400.copyWith(
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff223263)
                        ),
                      ),
                    ],
                  ),
                ),
                itemCount: title.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/auth/login.dart';
import 'package:mega_store/views/base/account/account_directions/address/address.dart';
import 'package:mega_store/views/base/account/account_directions/delete_account/delete_account.dart';
import 'package:mega_store/views/base/account/account_directions/my_orders/my_orders.dart';
import 'package:mega_store/views/base/account/account_directions/profile/profile.dart';
import '../../../core/design/styles.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                start: 26.w,
                top: 30.h,
                bottom: 28.h,
              ),
              child: const Text(
                "Account",
                style: Styles.textStyle16W700,
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {
                navigateTo(
                  const ProfileView(),
                );
              },
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 16.w,
                  top: 16.h,
                  bottom: 20.h,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/person.png",
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "Profile",
                      style: Styles.textStyle12W400.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff223263),
                        height: 1.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: ()
              {
                navigateTo(const MyOrdersView(),);
              },
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 16.w,
                  top: 16.h,
                  bottom: 20.h,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/orders.png",
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "My Orders",
                      style: Styles.textStyle12W400.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff223263),
                        height: 1.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: ()
              {
                navigateTo(const AddressView(),);
              },
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 16.w,
                  top: 16.h,
                  bottom: 20.h,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/address.png",
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "Address",
                      style: Styles.textStyle12W400.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff223263),
                        height: 1.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: ()
              {
                navigateTo(const LoginView(),);
              },
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 16.w,
                  top: 16.h,
                  bottom: 20.h,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/logout.png",
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "Log out",
                      style: Styles.textStyle12W400.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff223263),
                        height: 1.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: ()
              {
                navigateTo(const DeleteAccountView(),);
              },
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                  start: 16.w,
                  top: 16.h,
                  bottom: 20.h,
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/icons/delate_account.png",
                      width: 30.w,
                      height: 30.h,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text(
                      "Delete Account",
                      style: Styles.textStyle12W400.copyWith(
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff223263),
                        height: 1.8,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

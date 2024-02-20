import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/views/base/account/account_directions/components/change_lang_section.dart';
import 'package:mega_store/views/base/account/account_directions/components/change_password_section.dart';
import 'package:mega_store/views/base/account/account_directions/components/email_section.dart';
import 'package:mega_store/views/base/account/account_directions/components/phone_edit_section.dart';
import 'package:mega_store/views/base/account/account_directions/components/user_info.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
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
            horizontal: 23.w,
            vertical: 22.h,
          ),
          children: [
            const UserInfo(),
            SizedBox(
              height: 34.h,
            ),
            const EmailSection(),
            SizedBox(
              height: 34.h,
            ),
            const PhoneNumberSection(),
            SizedBox(
              height: 34.h,
            ),
            const ChangePasswordSection(),
            SizedBox(
              height: 34.h,
            ),
            const ChangeLangSection(),
          ],
        ),
      ),
    );
  }
}

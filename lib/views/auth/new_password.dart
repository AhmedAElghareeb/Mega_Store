import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/app_button.dart';
import '../../core/design/app_input.dart';
import '../../core/design/styles.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 16.w,
            vertical: 42.h,
          ),
          children: [
            Image.asset(
              "assets/images/logo.png",
            ),
            SizedBox(
              height: 28.h,
            ),
            const Text(
              "Reset Password",
              textAlign: TextAlign.center,
              style: Styles.textStyle16W700,
            ),
            SizedBox(
              height: 50.h,
            ),
            AppInput(
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty) {
                  return "This Field is Required!!!";
                }
                return null;
              },
              labelText: "Password",
              prefixIcon: "pass.svg",
            ),
            SizedBox(
              height: 8.h,
            ),
            AppInput(
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty) {
                  return "This Field is Required!!!";
                }
                return null;
              },
              labelText: "Confirm Password",
              prefixIcon: "pass.svg",
            ),
            SizedBox(
              height: 28.h,
            ),
            AppButton(
              onPress: () {},
              text: "Confirm",
            ),
          ],
        ),
      ),
    );
  }
}

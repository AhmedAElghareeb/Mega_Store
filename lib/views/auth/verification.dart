import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/logic/helper_methods.dart';

import '../../core/design/app_button.dart';
import '../../core/design/styles.dart';
import 'new_password.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(
            horizontal: 16.w,
            vertical: 42.h,
          ),
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
              ),
              SizedBox(
                height: 28.h,
              ),
              const Text(
                "Verify Your Account",
                textAlign: TextAlign.center,
                style: Styles.textStyle16W700,
              ),
              SizedBox(
                height: 16.h,
              ),
              const Text(
                "check your Email",
                textAlign: TextAlign.center,
                style: Styles.textStyle12W400,
              ),
              SizedBox(
                height: 148.h,
              ),
              AppButton(
                onPress: ()
                {
                  navigateTo(
                    const NewPasswordView(),
                  );
                },
                text: "Verify",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

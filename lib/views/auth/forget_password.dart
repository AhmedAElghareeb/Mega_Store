import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/auth/verification.dart';

import '../../core/design/app_button.dart';
import '../../core/design/app_input.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    final emailController = TextEditingController();

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
              "Forget Password",
              textAlign: TextAlign.center,
              style: Styles.textStyle16W700,
            ),
            SizedBox(
              height: 16.h,
            ),
            const Text(
              "Add your email  to send code ",
              textAlign: TextAlign.center,
              style: Styles.textStyle12W400,
            ),
            SizedBox(
              height: 69.h,
            ),
            Form(
              key: formKey,
              child: AppInput(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "This Field is Required!!!";
                  }
                  return null;
                },
                labelText: "Your Email",
                prefixIcon: "message.svg",
              ),
            ),
            SizedBox(
              height: 31.h,
            ),
            AppButton(
              onPress: () {
                if (formKey.currentState!.validate()) {
                  navigateTo(
                    const VerificationView(),
                  );
                }
              },
              text: "Send",
            ),
          ],
        ),
      ),
    );
  }
}

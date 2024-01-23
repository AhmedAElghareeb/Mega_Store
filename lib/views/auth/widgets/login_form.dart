import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/home/home_nav.dart';
import '../../../core/design/app_button.dart';
import '../../../core/design/app_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppInput(
          keyboardType: TextInputType.emailAddress,
          validator: (value) {
            if (value!.isEmpty) {
              return "This Field is Required!!!";
            }
            return null;
          },
          labelText: "Your Email",
          prefixIcon: "message.svg",
        ),
        SizedBox(
          height: 10.h,
        ),
        AppInput(
          keyboardType: TextInputType.visiblePassword,
          validator: (value) {
            if (value!.isEmpty) {
              return "This Field is Required!!!";
            }
            return null;
          },
          hidePass: true,
          labelText: "Password",
          prefixIcon: "pass.svg",
        ),
        SizedBox(
          height: 16.h,
        ),
        AppButton(
          onPress: () {
            navigateTo(
              const HomeNav(),
              removeHistory: true
            );
          },
          text: "Sign In",
        ),
      ],
    );
  }
}

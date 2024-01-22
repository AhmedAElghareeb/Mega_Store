import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/app_button.dart';
import '../../../core/design/app_input.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppInput(
          keyboardType: TextInputType.name,
          validator: (value) {
            if (value!.isEmpty) {
              return "This Field is Required!!!";
            }
            return null;
          },
          labelText: "Full Name",
          prefixIcon: "user.svg",
        ),
        SizedBox(
          height: 8.h,
        ),
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
          height: 8.h,
        ),
        AppInput(
          keyboardType: TextInputType.phone,
          validator: (value) {
            if (value!.isEmpty) {
              return "This Field is Required!!!";
            }
            return null;
          },
          labelText: "Your Phone",
          prefixIcon: "phone.svg",
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
          text: "Sign Up",
        ),
      ],
    );
  }
}
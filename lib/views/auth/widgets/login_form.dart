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
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Form(
      key: formKey,
      child: Column(
        children: [
          AppInput(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return "Oops! Your Email Is Not Correct";
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
            controller: passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return "Oops! Your Password Is Not Correct";
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
              if (formKey.currentState!.validate()) {
                navigateTo(
                  const HomeNav(),
                );
              }
            },
            text: "Sign In",
          ),
        ],
      ),
    );
  }
}

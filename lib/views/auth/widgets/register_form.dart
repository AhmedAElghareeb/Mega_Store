import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/auth/login.dart';

import '../../../core/design/app_button.dart';
import '../../../core/design/app_input.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppInput(
            keyboardType: TextInputType.name,
            controller: nameController,
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
          SizedBox(
            height: 8.h,
          ),
          AppInput(
            keyboardType: TextInputType.phone,
            controller: phoneController,
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
            controller: passwordController,
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
            controller: confirmPasswordController,
            validator: (value) {
              if (value!.isEmpty) {
                return "This Field is Required!!!";
              } else if (value.toString() != passwordController.text) {
                return "Password doesn't Match";
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
            onPress: () {
              if (formKey.currentState!.validate()) {
                navigateTo(
                  const LoginView(),
                );
              }
            },
            text: "Sign Up",
          ),
        ],
      ),
    );
  }
}

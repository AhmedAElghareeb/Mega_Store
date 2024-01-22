import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/design/styles.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key, this.isLogin = true});

  final bool isLogin;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/logo.png",
        ),
        SizedBox(
          height: 28.h,
        ),
        Center(
          child: Text(
            isLogin ? "Welcome to Mega Store" : "Let’s Get Started",
            style: Styles.textStyle16W700,
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        Center(
          child: Text(
            isLogin ? "Sign in to continue" : "Create an new account",
            style: Styles.textStyle12W400,
          ),
        ),
      ],
    );
  }
}
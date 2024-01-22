import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/auth/forget_password.dart';
import '../../../core/design/styles.dart';

class AuthFooter extends StatelessWidget {
  const AuthFooter({
    super.key,
    this.isRegister = true,
    this.onPressed,
  });

  final bool isRegister;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        isRegister
            ? const SizedBox.shrink()
            : TextButton(
                onPressed: () {
                  navigateTo(
                    const ForgetPasswordView(),
                  );
                },
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.center,
                  style: Styles.textStyle12W400.copyWith(
                    color: const Color(0xC4FF0009),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
        SizedBox(
          height: 21.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              isRegister ? "have a account?" : 'Don’t have a account?',
              style: Styles.textStyle12W400,
            ),
            TextButton(
              onPressed: onPressed,
              child: Text(
                isRegister ? "Sign In" : 'Register',
                style: Styles.textStyle12W400.copyWith(
                  fontWeight: FontWeight.w700,
                  color: const Color(0xC4FF0009),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

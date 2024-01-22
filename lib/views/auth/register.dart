import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/auth/login.dart';
import 'package:mega_store/views/auth/widgets/auth_footer.dart';
import 'widgets/auth_header.dart';
import 'widgets/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
            const AuthHeader(
              isLogin: false,
            ),
            SizedBox(
              height: 28.h,
            ),
            const RegisterForm(),
            SizedBox(
              height: 24.h,
            ),
            AuthFooter(
              isRegister: true,
              onPressed: () {
                navigateTo(
                  const LoginView(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
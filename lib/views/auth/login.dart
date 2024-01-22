import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/auth/register.dart';

import 'widgets/auth_footer.dart';
import 'widgets/auth_header.dart';
import 'widgets/divider_with_other_loin.dart';
import 'widgets/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            const AuthHeader(),
            SizedBox(
              height: 28.h,
            ),
            const LoginForm(),
            SizedBox(
              height: 31.h,
            ),
            const DividerWithOtherLogin(),
            SizedBox(
              height: 21.h,
            ),
            AuthFooter(
              isRegister: false,
              onPressed: () {
                navigateTo(
                  const RegisterView(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

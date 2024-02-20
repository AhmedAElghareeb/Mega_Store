import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/alert.png",
                width: 72.w,
                height: 72.h,
              ),
              Text(
                "Confirmation",
                style: Styles.textStyle20W600.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.5,
                    color: const Color(0xff223263)),
              ),
              Text(
                "Are you sure wanna delete address",
                style: Styles.textStyle12W400.copyWith(
                  height: 2.1,
                  color: const Color(0xff223263),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              AppButton(
                text: "Delete",
                onPress: () {},
              ),
              SizedBox(
                height: 16.h,
              ),
              AppButton(
                text: "Cancel",
                onPress: () {},
                bgColor: const Color(0xff50555C),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

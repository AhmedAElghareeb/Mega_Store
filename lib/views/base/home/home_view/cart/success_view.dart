import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/home/home_nav.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/icons/success_icon.svg",
              ),
              Text(
                "Success",
                style: Styles.textStyle20W600.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                  height: 2,
                  color: const Color(0xff223263),
                ),
              ),
              Text(
                "thank you for shopping From",
                style: Styles.textStyle20W600.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  height: 2.8,
                  color: const Color(0xff223263),
                ),
              ),
              Text(
                "MEGA STORE",
                style: Styles.textStyle20W600.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  height: 1.5,
                  color: const Color(0xff223263),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              AppButton(
                text: "Back To Home",
                bgColor: const Color(0xff50555C),
                onPress: () {
                  navigateTo(
                    const HomeNav(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

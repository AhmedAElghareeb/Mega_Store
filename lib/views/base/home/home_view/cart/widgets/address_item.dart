import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.w,
      height: 240.h,
      margin: EdgeInsetsDirectional.only(
          bottom: 16.h
      ),
      padding: EdgeInsetsDirectional.symmetric(
        horizontal: 24.w,
        vertical: 24.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: const Color(0xff40BFFF),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Priscekila",
            style: Styles.textStyle14W700.copyWith(
              color: const Color(0xff223263),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
            style: Styles.textStyle12W400.copyWith(
              height: 2.1,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Text(
            "+99 1234567890",
            style: Styles.textStyle12W400.copyWith(
              height: 2.1,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 77.w,
                child: AppButton(
                  text: "Edit",
                  bgColor: const Color(0xff50555C),
                  onPress: () {},
                ),
              ),
              SizedBox(
                width: 16.h,
              ),
              Icon(
                Icons.delete_outline_rounded,
                size: 24.r,
                color: const Color(0xff223263),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_input.dart';
import 'package:mega_store/core/design/styles.dart';

class AddressFields extends StatelessWidget {
  const AddressFields({
    super.key,
    required this.title,
    required this.controller,
    required this.i,
  });

  final List<String> title;
  final List<TextEditingController> controller;
  final int i;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        bottom: 24.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title[i],
            style: Styles.textStyle14W700.copyWith(
              color: const Color(0xff223263),
              height: 2.1,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          AppInput(
            controller: controller[i],
            validator: (value) {
              if (value!.isEmpty) {
                return "This Field is Required";
              }
              return null;
            },
          ),
        ],
      ),
    );
  }
}
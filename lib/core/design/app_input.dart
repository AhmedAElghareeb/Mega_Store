import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'styles.dart';

class AppInput extends StatefulWidget {
  const AppInput({
    super.key,
    this.controller,
    this.prefixIcon,
    this.keyboardType = TextInputType.text,
    this.labelText,
    this.validator, this.hidePass = false,
  });

  final TextEditingController? controller;
  final String? labelText, prefixIcon;
  final TextInputType keyboardType;
  final FormFieldValidator<String?>? validator;
  final bool hidePass;

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: const BorderSide(
            color: Color(0xFFEAEFFF),
            width: 1,
          ),
        ),
        labelText: widget.labelText,
        labelStyle: Styles.textStyle12W400,
        prefixIcon: Padding(
          padding: EdgeInsetsDirectional.all(
            12.r,
          ),
          child: SvgPicture.asset(
            "assets/icons/${widget.prefixIcon!}",
            fit: BoxFit.scaleDown,
            height: 24.h,
            width: 24.w,
          ),
        ),
      ),
      obscureText: widget.hidePass,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}

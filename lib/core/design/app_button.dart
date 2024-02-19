import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.text,
    this.onPress,
    this.bgColor = const Color(0xFFED1C24),
  });

  final String text;
  final VoidCallback? onPress;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        width: 343.w,
        height: 57.h,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              5.r,
            ),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3D40BFFF),
              blurRadius: 30,
              offset: Offset(0, 5),
              spreadRadius: 0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Styles.textStyle14W700,
          ),
        ),
      ),
    );
  }
}

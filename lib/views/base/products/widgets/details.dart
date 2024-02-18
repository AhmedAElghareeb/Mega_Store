import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/design/styles.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Details",
          style: Styles.textStyle14W700.copyWith(
            height: 0.1,
            color: const Color(0xffF57E2E),
          ),
        ),
        SizedBox(
          height: 13.h,
        ),
        Text(
          "The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for unrivaled comfort and a striking visual experience.",
          style: Styles.textStyle12W400.copyWith(
            height: 2.1,
          ),
        ),
      ],
    );
  }
}
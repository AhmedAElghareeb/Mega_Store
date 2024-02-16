import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    title: Text(
      title ?? "",
      style: Styles.textStyle16W700,
    ),
    leading: IconButton(
      onPressed: ()
      {
        // navigateBack();
      },
      icon: SvgPicture.asset(
        "assets/icons/arrow_left.svg",
      ),
    ),
  );
}
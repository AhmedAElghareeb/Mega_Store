import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_store/core/design/styles.dart';

AppBar buildAppBar({final String? title}) {
  return AppBar(
    title: Text(
      title ?? "",
      style: Styles.textStyle16W700,
    ),
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset(
        "assets/icons/arrow_left.svg",
      ),
    ),
  );
}
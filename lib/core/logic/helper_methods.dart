import 'package:flutter/material.dart';

final navigatorKey = GlobalKey<NavigatorState>();

Future navigateTo(Widget page, {bool removeHistory = false}) {
  return Navigator.pushAndRemoveUntil(
    navigatorKey.currentContext!,
    MaterialPageRoute(
      builder: (context) => page,
    ),
    (route) => removeHistory,
  );
}

navigateBack() {
  return Navigator.pop(
    navigatorKey.currentContext!,
  );
}

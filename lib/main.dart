import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/views/base/splash/splash.dart';

import 'core/logic/helper_methods.dart';

void main() {
  runApp(
    const MegaStore(),
  );
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

class MegaStore extends StatelessWidget {
  const MegaStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(
        375,
        810,
      ),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            centerTitle: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          fontFamily: "Poppins",
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: false,
          platform: TargetPlatform.iOS,
        ),
        navigatorKey: navigatorKey,
        home: const SplashView(),
      ),
    );
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import '../../../core/logic/helper_methods.dart';
import '../../auth/login.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(
        seconds: 2,
      ),
      () async {
        navigateTo(
          const LoginView(),
          removeHistory: true,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Image.asset(
            "assets/images/logo.png",
          ),
        ),
      ),
    );
  }
}

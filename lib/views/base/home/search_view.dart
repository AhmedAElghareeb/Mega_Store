import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/design/app_button.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/core/logic/helper_methods.dart';
import 'package:mega_store/views/base/home/view.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          const Text(
            "Search Results",
            textAlign: TextAlign.center,
            style: Styles.textStyle20W600,
          ),
          SizedBox(
            height: 12.h,
          ),
          const Divider(
            thickness: 1.5,
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Image.asset(
              "assets/images/searchres.png",
              width: 197.w,
              height: 218.h,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "No Result Found",
            textAlign: TextAlign.center,
            style: Styles.textStyle16W700.copyWith(fontSize: 24, height: 3.5),
          ),
          SizedBox(
            height: 46.h,
          ),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(
              horizontal: 16.w,
            ),
            child: AppButton(
              onPress: () {
                navigateTo(
                  const HomeView(),
                );
              },
              text: "Back to Home",
              bgColor: const Color(0xffBA6400),
            ),
          ),
        ],
      ),
    );
  }
}

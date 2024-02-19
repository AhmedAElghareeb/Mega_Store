import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_store/core/design/styles.dart';
import 'package:mega_store/views/base/account/view.dart';
import 'package:mega_store/views/base/favorites/view.dart';
import 'package:mega_store/views/base/home/home_view/view.dart';
import 'package:mega_store/views/base/offers/view.dart';

class HomeNav extends StatefulWidget {
  const HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int currentIndex = 0;

  List<String> titles = [
    "Home",
    "Account",
    "Offer",
    "Favorite",
  ];

  List<String> iconPath = [
    "home.svg",
    "account.svg",
    "offers.svg",
    "favorites.svg",
  ];

  List<Widget> pages = [
    const HomeView(),
    const AccountView(),
    const OffersView(),
    const FavoritesView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: List.generate(
          pages.length,
          (i) => BottomNavigationBarItem(
            icon: SizedBox(
              height: 60.h,
              child: SvgPicture.asset(
                "assets/icons/${iconPath[i]}",
                color: currentIndex == i
                    ? const Color(0xff50555C)
                    : const Color(0xff9098B1),
                width: 24.w,
                height: 24.h,
              ),
            ),
            label: titles[i],
          ),
        ),
        selectedLabelStyle: Styles.textStyles10W700,
        unselectedLabelStyle: Styles.textStyles10W700.copyWith(
          fontWeight: FontWeight.w400,
        ),
        currentIndex: currentIndex,
        elevation: 0,
        selectedItemColor: const Color(0xff50555C),
        unselectedItemColor: const Color(0xff9098B1),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (ii) {
          currentIndex = ii;
          setState(() {});
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/pages/HomeScreen.dart';
import 'package:market/features/screens/Explore_screen.dart';
import 'package:market/features/screens/account.dart';
import 'package:market/features/screens/cart.dart';
import 'package:market/features/screens/favorite.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    Homescreen(),
    ExploreScreen(),
    Cart(),
    Favorite(),
    Account(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: MColors.greyColor,
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 8),
              )
            ],
            color: MColors.whiteColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            )),
        child: BottomNavigationBar(
            
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            //selectedLabelStyle: TextStyle(height: 1),
            //unselectedLabelStyle: TextStyle(height: 1),
            selectedItemColor: MColors.PrimaryColor,
            backgroundColor: Colors.transparent,
            items: [
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    AppAssets.store,
                    colorFilter:
                        ColorFilter.mode(MColors.PrimaryColor, BlendMode.srcIn),
                  ),
                  icon: SvgPicture.asset(AppAssets.store),
                  label: 'Shop'),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    AppAssets.search,
                    colorFilter:
                        ColorFilter.mode(MColors.PrimaryColor, BlendMode.srcIn),
                  ),
                  icon: SvgPicture.asset(AppAssets.search),
                  label: 'Explore'),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    AppAssets.cart,
                    colorFilter:
                        ColorFilter.mode(MColors.PrimaryColor, BlendMode.srcIn),
                  ),
                  icon: SvgPicture.asset(AppAssets.cart),
                  label: 'Cart'),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    AppAssets.favorite,
                    colorFilter:
                        ColorFilter.mode(MColors.PrimaryColor, BlendMode.srcIn),
                  ),
                  icon: SvgPicture.asset(AppAssets.favorite),
                  label: 'Favourite'),
              BottomNavigationBarItem(
                  activeIcon: SvgPicture.asset(
                    AppAssets.account,
                    colorFilter:
                        ColorFilter.mode(MColors.PrimaryColor, BlendMode.srcIn),
                  ),
                  icon: SvgPicture.asset(AppAssets.account),
                  label: 'Account'),
            ]),
      ),
    );
  }
}

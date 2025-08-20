import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/pages/mobilenumber.dart';
import 'package:market/features/auth/pages/social_media.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center, // belnsba alakbar child
        children: [
          Image.asset(
            fit: BoxFit.cover,
            AppAssets.welcome,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                  Color(0xff0E1727).withValues(alpha: 0),
                  Color(0xff858585).withValues(alpha: .4),
                ])),
              )),
          Positioned(
            bottom: 80,
            left: 30,
            right: 30,
            child: Column(
              children: [
                SvgPicture.asset(
                  AppAssets.carrot,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                Text(
                  'Welcome \nto our store',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Ger your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: MColors.whiteColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                MainButton(text: 'Get Started', onPressed: () {pushTo(context, SocialMedia());}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

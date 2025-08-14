import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/pages/location_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      pushWithReplacement(context, const LocationScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.PrimaryColor,
      body: Center(child: SvgPicture.asset(AppAssets.logo, width: 200)),
    );
  }
}

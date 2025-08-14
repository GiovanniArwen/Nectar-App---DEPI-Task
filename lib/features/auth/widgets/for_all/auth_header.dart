import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/utils/colors.dart';

class AuthHeader extends StatelessWidget {
  const AuthHeader({super.key,
   required this.HeaderText,required this.SubText});
  final String HeaderText;
  final String SubText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              AppAssets.carrot,
              // colorFilter:
              //     ColorFilter.mode(MColors.PrimaryColor, BlendMode.srcIn),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Text(
          HeaderText,
          style: TextStyle(
              fontSize: 26, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          SubText,
          style: TextStyle(fontSize: 16, color: MColors.greyColor),
        )
      ],
    );
  }
}

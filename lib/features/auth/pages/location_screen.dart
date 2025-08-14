import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/pages/login_screen.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key});

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(AppAssets.location),
            SizedBox(
              height: 40,
            ),
            Text(
              'Select Your Location',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              textAlign: TextAlign.center,
              'Switch on your location to stay in tune with \nwhat’s happening in your area',
              style: TextStyle(fontSize: 16, color: MColors.greyColor),
            ),
            SizedBox(
              height: 160,
            ),
            Container(
              padding: EdgeInsets.only(bottom: 1,top: 5),
              width: 364,
              height: 74,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: MColors.greyColor,
                width: 1,
              ))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Address',
                    style: TextStyle(
                        fontSize: 16,
                        color: MColors.greyColor,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Cairo, Egypt',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 78,),
            MainButton(
                text: 'Submit', onPressed: (){pushTo(context, LoginScreen());})
          ],
        ),
      ),
    );
  }
}

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
      backgroundColor: MColors.whiteColor,
      appBar: AppBar(
        backgroundColor: MColors.whiteColor,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(AppAssets.location),
              SizedBox(
                height: 37,
              ),
              Text(
                'Select Your Location',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 13,
              ),
              Text(
                textAlign: TextAlign.center,
                'Switch on your location to stay in tune with \nwhat’s happening in your area',
                style: TextStyle(fontSize: 16, color: MColors.greyColor),
              ),
              SizedBox(
                height: 165,
              ),
              
              TextFormField(
                decoration: InputDecoration(
                  label: Text(
                    'Address',
                  ),
                  //hintText: 'Enter your mobile number',
                ),
              ),
              SizedBox(
                height: 72,
              ),
              MainButton(
                  text: 'Submit',
                  onPressed: () {
                    pushTo(context, LoginScreen());
                  })
            ],
          ),
        ),
      ),
    );
  }
}

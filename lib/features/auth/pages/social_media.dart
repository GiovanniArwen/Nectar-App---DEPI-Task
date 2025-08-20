import 'package:flutter/material.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/pages/mobilenumber.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/Mask Group.png'),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get your groceries \nwith nectar',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      //label: Text('Mobile Number',),
                      //hintText: 'Enter your mobile number',
                      prefixIconConstraints:
                          BoxConstraints(minWidth: 35, minHeight: 35),
                      prefixIcon: Image.asset('assets/images/Rectangle 11.png'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Or connect with social media',
                      style: TextStyle(
                          fontSize: 15,
                          color: MColors.greyColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MainButton(
                    text: 'Continue with Google',
                    onPressed: () {},
                    bgColor: Color(0xff5383EC),
                  ),
                  SizedBox(height: 20,),
                  MainButton(
                    text: 'Continue with Facebook',
                    onPressed: () {
                      pushTo(context, Mobilenumber());
                    },
                    bgColor: Color(0xff4A66AC),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

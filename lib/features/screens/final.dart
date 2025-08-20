import 'package:flutter/material.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/main/main_screen.dart';

class Final extends StatelessWidget {
  const Final({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/FINAL.png'),
            SizedBox(
              height: 60,
            ),
            Text(
              'Your Order has been \naccepted',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Your items has been placcd and is on \nit’s way to being processed',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: MColors.greyColor,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            MainButton(
                text: 'Back To Home',
                onPressed: () {
                  pushandremoveuntil(context, MainScreen());
                })
          ],
        ),
      ),
    );
  }
}

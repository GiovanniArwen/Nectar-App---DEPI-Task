import 'package:flutter/material.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/pages/location_screen.dart';

class Getcode extends StatelessWidget {
  const Getcode({super.key});

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
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your 4-digit code',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              'Code',
              style: TextStyle(
                  fontSize: 15,
                  color: MColors.greyColor,
                  fontWeight: FontWeight.w600),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                //label: Text('Mobile Number',),
                //hintText: 'Enter your mobile number',

                prefixIconConstraints:
                    BoxConstraints(minWidth: 35, minHeight: 35),
              ),
            ),
            Spacer(),
            Row(
              children: [
                RichText(
                
                    text: WidgetSpan(
                      
                  child: Text('Resend Code',
                      style: TextStyle(
                        color: MColors.PrimaryColor,
                        fontSize: 20,
                      )),
                )),
            Spacer(),
            FloatingActionButton(
                onPressed: () {
                  pushTo(context, LocationScreen());
                },
                shape: CircleBorder(),
                backgroundColor: MColors.PrimaryColor,
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: MColors.whiteColor,
                ))
              ],
            )
            
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/pages/getcode.dart';

class Mobilenumber extends StatelessWidget {
  const Mobilenumber({super.key});

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
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter your mobile number',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              'Mobile Number',
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
                prefixIcon: Image.asset('assets/images/Rectangle 11.png'),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                  onPressed: () {
                    pushTo(context, Getcode());
                  },
                  shape: CircleBorder(),
                  backgroundColor: MColors.PrimaryColor,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: MColors.whiteColor,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

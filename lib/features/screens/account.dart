import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/components/inputs/special_button.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/models/account.dart';

class Account extends StatelessWidget {
  const Account({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 25, 0, 0),
            child: Row(
              children: [
                SvgPicture.asset(
                  AppAssets.accountperson,
                  width: 70,
                  height: 70,
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Giovanni Arwen',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(AppAssets.pen),
                      ],
                    ),
                    Text(
                      'jovanierwen656@gmail.com',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: MColors.greyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 580,
            width: double.infinity,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  var Product = accountlist[index];
                  return AccountModel(
                    model: Product,
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 0,
                  );
                },
                itemCount: accountlist.length),
          ),
          SMainButton(
            text: 'Log Out',
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class AccountModel extends StatelessWidget {
  const AccountModel({
    super.key,
    required this.model,
  });
  final AccountList model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          color: MColors.whiteColor,
          border: Border.all(
            color: MColors.bordercolor,
            width: 1,
          )),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(model.image,width: 30,),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                model.name,
              ),
            ),
            model.suficon,
          ],
        ),
      ),
    );
  }
}

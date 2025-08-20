import 'package:flutter/material.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/extenstions/expansion.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/widgets/Cart/Grid_Cart.dart';
import 'package:market/features/screens/final.dart';

class Cart extends StatelessWidget {
  Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'My Cart',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            GridCart(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
        child: MainButton(
          text: 'Go to Checkout',
          onPressed: () {
            showBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    width: double.infinity,
                    height: 445,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: MColors.greysearchbar,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Checkout',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Image.asset('assets/images/cross.png'))
                          ],
                        ),
                        expansion(
                          width: 113,
                          text2: 'Select Method',
                          text: 'Delivery',
                          fontSize: 16,
                          color: MColors.greyColor,
                          color2: Colors.black,
                          fontweight: FontWeight.w600,
                        ),
                        expansion2(
                          width: 205,
                          text: 'Pament',
                          fontSize: 16,
                          color: MColors.greyColor,
                          fontweight: FontWeight.w600,
                        ),
                        expansion(
                          width: 85,
                          text2: 'Pick discount',
                          text: 'Promo Code',
                          fontSize: 16,
                          color: MColors.greyColor,
                          color2: Colors.black,
                          fontweight: FontWeight.w600,
                        ),
                        expansion(
                          width: 165,
                          text2: '\$13.97',
                          text: 'Total Cost',
                          fontSize: 16,
                          color: MColors.greyColor,
                          color2: Colors.black,
                          fontweight: FontWeight.w600,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(children: [
                            TextSpan(
                              text: "By placing an order you agree to our",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: MColors.greyColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: "\n",
                            ),
                            WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Text(
                                  'Terms ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                            TextSpan(
                              text: "and",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: MColors.greyColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Text(
                                  ' Conditions ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ))
                          ]),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        MainButton(text: 'Place order', onPressed: () {
                          pushTo(context, Final());
                        })
                      ],
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}

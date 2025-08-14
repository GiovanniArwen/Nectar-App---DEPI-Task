import 'package:flutter/material.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/widgets/Cart/Grid_Cart.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

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
      bottomNavigationBar:
      
      Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
        child: MainButton(text: 'Go to Checkout', onPressed: () {},),
      ),
    );
  }
}

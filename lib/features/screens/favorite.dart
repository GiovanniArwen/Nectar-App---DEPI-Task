import 'package:flutter/material.dart';
import 'package:market/components/inputs/main_button.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/widgets/Favourite/Grid_Fav.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

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
              'Favorite',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            GridFavourite(),
          ],
        ),
      ),
      bottomNavigationBar:
      Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 20, 0),
        child: MainButton(text: 'Add All To Cart', onPressed: () {},),
      ),
    );
  }
}
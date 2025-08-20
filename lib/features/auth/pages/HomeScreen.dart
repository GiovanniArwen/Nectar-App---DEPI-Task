import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/core/constants/assets.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/widgets/Shop/Exclusive_offer.dart';
import 'package:market/features/auth/widgets/Shop/GridView_BestSelling.dart';
import 'package:market/features/auth/widgets/for_all/search_bar.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({
    super.key,
  });

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 17,
              ),
              SvgPicture.asset(
                AppAssets.logo,
                width: 211,
                height: 56,
                colorFilter:
                    ColorFilter.mode(MColors.PrimaryColor, BlendMode.srcIn),
              ),
              SizedBox(
                height: 17,
              ),
              searchBar(),
              SizedBox(
                height: 24,
              ),
              Title(),
              SizedBox(
                height: 20,
              ),
              OfferCards(),
              SizedBox(
                height: 30,
              ),
              Title2(),
              GridFind(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }


  Row Title() {
    return Row(
      children: [
        Text(
          'Exclusive Offer',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          'See all',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: MColors.PrimaryColor),
        ),
      ],
    );
  }

  Row Title2() {
    return Row(
      children: [
        Text(
          'Best Selling',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          'See all',
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: MColors.PrimaryColor),
        ),
      ],
    );
  }
}



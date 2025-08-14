import 'package:flutter/material.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/auth/widgets/Explore/Grid_FindPro.dart';
import 'package:market/features/auth/widgets/for_all/search_bar.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MColors.whiteColor,
        body: Padding(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Find Products',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                searchBar(),
                GridExplore(),
              ],
            ),
          ),
        ));
  }
}

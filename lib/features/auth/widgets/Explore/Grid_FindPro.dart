import 'package:flutter/material.dart';
import 'package:market/features/auth/widgets/Explore/Card_Desgine.dart';
import 'package:market/features/models/Explore_model.dart';

class GridExplore extends StatelessWidget {
  const GridExplore({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          mainAxisExtent: 190),
      itemBuilder: (context, index) {
        var Product = products1[index];
        return RecentCard3(
          model: Product,
        );
      },
      itemCount: products1.length,
    );
  }
}
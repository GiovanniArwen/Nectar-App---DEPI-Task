import 'package:flutter/material.dart';
import 'package:market/features/auth/widgets/Shop/Bestselling_cards.dart';
import 'package:market/features/models/best_selling.dart';

class GridFind extends StatelessWidget {
  const GridFind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          mainAxisExtent: 250),
      itemBuilder: (context, index) {
        var products = productsBestSelling[index];
        return RecentCard1(
          model: products,
        );
      },
      itemCount: productsBestSelling.length,
    );
  }
}
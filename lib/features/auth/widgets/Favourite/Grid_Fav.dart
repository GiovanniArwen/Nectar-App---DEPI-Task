import 'package:flutter/material.dart';
import 'package:market/features/auth/widgets/Favourite/Card_Desgine.dart';
import 'package:market/features/models/Favourite_model.dart';

class GridFavourite extends StatelessWidget {
  const GridFavourite({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 120),
      itemBuilder: (context, index) {
        var Product = favouritemodel[index];
        return RecentCard5(
          model: Product,
        );
      },
      itemCount: favouritemodel.length,
    );
  }
}
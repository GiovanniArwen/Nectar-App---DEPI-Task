import 'package:flutter/material.dart';
import 'package:market/features/auth/widgets/Cart/CardDes_Cart.dart';
import 'package:market/features/models/Cart_model.dart';

class GridCart extends StatelessWidget {
  const GridCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 150),
      itemBuilder: (context, index) {
        var Product = MyCartProduct[index];
        return RecentCard4(
          model: Product,
        );
      },
      itemCount: MyCartProduct.length,
    );
  }
}
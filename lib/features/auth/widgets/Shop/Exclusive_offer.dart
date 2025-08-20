import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/core/extenstions/navigation.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/details/product_details.dart';
import 'package:market/features/models/order_model.dart';

class OfferCards extends StatelessWidget {
  const OfferCards({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var Product = products[index];
          return RecentCard(
            model: Product,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
        itemCount: products.length,
      ),
    );
  }
}

class RecentCard extends StatelessWidget {
  const RecentCard({
    super.key,
    required this.model,
  });
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(
            context,
            ProductDetails(
              model: model,
            ));
      },
      child: Container(
        width: 173,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(
              color: MColors.bordercolor,
              width: 1,
            )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SvgPicture.asset(
                  model.image,
                ),
              ),
              Text(
                model.name,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                model.quantity,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '\$${model.price}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    elevation: 0,
                    mini: true,
                    backgroundColor: MColors.PrimaryColor,
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/models/Favourite_model.dart';

class RecentCard5 extends StatelessWidget {
  const RecentCard5({
    super.key,
    required this.model,
  });
  final FavouriteModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: MColors.bordercolor,
          )),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SvgPicture.asset(
              width: 30,
              height: 50,
              model.image,
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    model.quantity,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            
            SizedBox(height: 45,),
            Text(
                    model.price,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 8,),
                  Icon(Icons.arrow_forward_ios_rounded,
            color: Colors.black,),
          ],
        ),
      ),
    );
  }



}

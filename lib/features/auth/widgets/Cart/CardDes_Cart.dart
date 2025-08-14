import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/core/utils/colors.dart';
import 'package:market/features/models/Cart_model.dart';

class RecentCard4 extends StatelessWidget {
  const RecentCard4({
    super.key,
    required this.model,
  });
  final CartProduct model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
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
              width: 60,
              height: 60,
              model.image,
            ),
            SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    model.subname,
                    style: TextStyle(
                      color: MColors.greyColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  SizedBox(height: 7,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      remove_button(),
                      SizedBox(width: 10,),
                      Text(
                        '1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10,),
                      add_button(),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Icon(Icons.close,
              color: MColors.greyColor,),
              SizedBox(height: 45,),
              Text(
                      model.Price,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
              ],
            )
          ],
        ),
      ),
    );
  }

  FloatingActionButton add_button() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.add,
        color: MColors.PrimaryColor,
      ),
      backgroundColor: MColors.whiteColor,
      elevation: 0,
      mini: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
          side: BorderSide(
            color: MColors.bordercolor,
          )),
    );
  }

  FloatingActionButton remove_button() {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.remove,
        color: MColors.greyColor,
      ),
      backgroundColor: MColors.whiteColor,
      elevation: 0,
      mini: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(17),
          side: BorderSide(
            color: MColors.bordercolor,
          )),
    );
  }
}

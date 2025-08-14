import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:market/features/models/Explore_model.dart';

class RecentCard3 extends StatelessWidget {
  const RecentCard3({
    super.key,
    required this.model,
  });
  final Product1 model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 173,
      decoration: BoxDecoration(
          color: model.colors,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: model.BorderColor,
            width: 1,
          )),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SvgPicture.asset(
                width: 100,
                height: 80,
                model.image,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              textAlign: TextAlign.center,
              model.name,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

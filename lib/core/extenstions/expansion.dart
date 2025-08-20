import 'package:flutter/material.dart';
import 'package:market/core/utils/colors.dart';

class expansion extends StatelessWidget {
  const expansion({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontweight,
    required this.color,
    required this.text2,
    required this.width,
    required this.color2,
  });
  final String text;
  final String text2;
  final double fontSize;
  final FontWeight fontweight;
  final Color color;
  final Color color2;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        children: [
          Text(
            'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
            style: TextStyle(
              fontSize: 12,
              color: MColors.greyColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
        iconColor: Colors.black,
        trailing: Icon(Icons.arrow_forward_ios, size: 20),
        tilePadding: EdgeInsets.symmetric(horizontal: 5),
        title: Container(
          width: double.infinity,
            height: 40,

          decoration: BoxDecoration(
            border: Border(
            bottom:   BorderSide(color: MColors.bordercolor,),
            //top:   BorderSide(color: MColors.bordercolor,)
            )
          ),
          child: Title(
            color: MColors.greyColor,
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: color,
                    fontWeight: fontweight,
                  ),
                ),
                SizedBox(
                  width: width,
                ),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: color2,
                    fontWeight: fontweight,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

class expansion2 extends StatelessWidget {
  const expansion2({
    super.key,
    required this.text,
    required this.fontSize,
    required this.fontweight,
    required this.color,
    required this.width,
  });
  final String text;
  final double fontSize;
  final FontWeight fontweight;
  final Color color;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
        children: [
          Text(
            'Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.',
            style: TextStyle(
              fontSize: 12,
              color: MColors.greyColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
        iconColor: Colors.black,
        trailing: Icon(Icons.arrow_forward_ios, size: 20),
        tilePadding: EdgeInsets.symmetric(horizontal: 5),
        title: Container(
          width: double.infinity,
            height: 40,

          decoration: BoxDecoration(
            border: Border(
            bottom:   BorderSide(color: MColors.bordercolor,),
            //top:   BorderSide(color: MColors.bordercolor,)
            )
          ),
          child: Title(
            color: MColors.greyColor,
            child: Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: color,
                    fontWeight: fontweight,
                  ),
                ),
                SizedBox(
                  width: width,
                ),
                Image.asset(
                  'assets/images/card.png',
                  height: 30,
                  width: 30,
                ),
              ],
            ),
          ),
        ));
  }
}

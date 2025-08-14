import 'package:flutter/material.dart';
import 'package:market/core/utils/colors.dart';

class SMainButton extends StatelessWidget {
  const SMainButton(
      {super.key,
      required this.text,
      required this.onPressed,
      this.width,
      this.bgColor,
      this.height = 60});
  final String text;
  final Function() onPressed;
  final double? height;
  final double? width;
  final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor ?? const Color.fromARGB(255, 236, 236, 236),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: MColors.PrimaryColor,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:market/core/utils/colors.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      labelStyle: TextStyle(
        color: MColors.greyColor,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: MColors.greyColor),
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: MColors.greyColor)),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      disabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
    ),
    fontFamily: 'Poppins',
  );
}

import 'package:e_commerce_app/core/styles/colors/dark_colors.dart';
import 'package:e_commerce_app/core/styles/colors/light_colors.dart';
import 'package:e_commerce_app/core/utils/font_family_name.dart';
import 'package:flutter/material.dart';

import 'colors_extension.dart';

ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: DarkColors.mainColor,
    extensions: <ThemeExtension<MyColors>>[MyColors.dark],
    textTheme: TextTheme(
      displaySmall:TextStyle(
        color: DarkColors.white,
        fontFamily: FontFamilyName.getLocalizedFontFamily(),
      ) 
    )
  );
}

ThemeData lightThem() {
  return ThemeData(
    scaffoldBackgroundColor: LightColors.mainColor,
    extensions: <ThemeExtension<MyColors>>[MyColors.light],
      textTheme: TextTheme(
      displaySmall:TextStyle(
        color: LightColors.black,
        fontFamily: FontFamilyName.getLocalizedFontFamily(),
      ) 
    )
  );
}

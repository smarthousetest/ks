import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() => ThemeData(
    brightness: Brightness.light,
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kBacColor,
    fontFamily: FontFamilyText,
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(
                fontWeight: FontWeight.w400, fontStyle: FontStyle.normal)),
            backgroundColor: MaterialStateProperty.all<Color>(kButtonColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(9)),
            )))));

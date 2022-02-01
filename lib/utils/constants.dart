import 'package:flutter/material.dart';

const LargeTextSize = 24.0;
const MediumTextSize = 18.0;
const BodyTextSize = 14.0;

const String FontFamilyText = 'Ubuntu';

Color kPrimaryColor = Color(0xFF2E8B90);
Color kBacColor = Color(0xFFF6F9F9);

Color kButtonColor = Color(0xFF3B8992);
Color kShadowColor = Color(0xFF59377C7C);

BoxDecoration kDecorationBox = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.only(
      topLeft: Radius.circular(10),
      topRight: Radius.circular(10),
      bottomLeft: Radius.circular(10),
      bottomRight: Radius.circular(10)),
  boxShadow: [
    BoxShadow(
      color: kShadowColor.withOpacity(0.1),
      spreadRadius: 2,
      blurRadius: 10, // changes position of shadow
    ),
  ],
);

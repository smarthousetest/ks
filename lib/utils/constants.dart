import 'package:flutter/material.dart';

const LargeTextSize = 24.0;
const MediumTextSize = 18.0;
const BodyTextSize = 14.0;

const String FontFamilyText = 'Ubuntu';

Color kPrimaryColor = const Color(0xFF2E8B90);
Color kBacColor = const Color(0xFFF6F9F9);

Color kButtonColor = const Color(0xFF3B8992);

Color kIconColor = const Color(0xFF3B8992);

Color kTextGreenColor = const Color(0xFF3B8992);
Color kTextGreyColor = const Color(0xFF828282);

Color kUnSelectProgramColor = const Color(0xFFEBECEC);
Color kShadowColor = const Color(0xFF59377C7C);

BoxDecoration kDecorationBox = BoxDecoration(
  color: Colors.white,
  borderRadius: const BorderRadius.all(Radius.circular(9)),
  boxShadow: [
    BoxShadow(
      color: kShadowColor.withOpacity(0.1),
      spreadRadius: 2,
      blurRadius: 10, // changes position of shadow
    ),
  ],
);

TextStyle kAppBarTextStyle = const TextStyle(
    color: Colors.black, fontWeight: FontWeight.w700, fontSize: MediumTextSize);

TextStyle kContentTextStyle = const TextStyle(
    color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16);

TextStyle kTransporgGreyTextStyle = const TextStyle(
    color: Color(0xFF828282), fontWeight: FontWeight.w400, fontSize: 14);

TextStyle kFilterTextStyle = const TextStyle(
    color: Color(0xFF212121),
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontStyle: FontStyle.normal);

TextStyle kSpeckerTextStyle = const TextStyle(
    color: Color(0xFF3B8992), fontWeight: FontWeight.w700, fontSize: 16);

InputDecoration kinputDecorationDesign = InputDecoration(
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    filled: true,
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8))),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF008870), width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8))));

TextStyle kzayavgreenTextStyle = const TextStyle(
    color: Color(0xFF3B8992),
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontStyle: FontStyle.normal);

TextStyle kzayavblackTextStyle = const TextStyle(
    color: Color(0xFF000000),
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontStyle: FontStyle.normal);

TextStyle kzayavnoneTextStyle = const TextStyle(
    color: Color(0xFFBDBDBD),
    fontWeight: FontWeight.w400,
    fontSize: 16,
    fontStyle: FontStyle.normal);

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';

class ScheduleCard extends StatelessWidget {
  String time;
  String title;
  String zal;
  bool trans;
  bool favourites;

  ScheduleCard(
      {required this.time,
      required this.title,
      required this.zal,
      required this.trans,
      required this.favourites});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
      decoration: kDecorationBox,
      child: Stack(
        children: [
          Container(
              padding: EdgeInsets.only(right: 15),
              alignment: Alignment.topRight,
              child: favourites
                  ? SvgPicture.asset("assets/icons/favouritesplus.svg")
                  : SvgPicture.asset("assets/icons/favouritesminus.svg")),
          Padding(
            padding:
                const EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$time",
                  style: TextStyle(
                      color: kTextGreenColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Text(
                    "$title",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icons/location.svg",
                        color: kTextGreenColor),
                    SizedBox(width: 9),
                    Text(
                      "$zal",
                      style: TextStyle(
                          color: kTextGreenColor,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ],
                ),
                trans
                    ? Container(
                        child: Column(
                          children: [
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset("assets/icons/zoom.svg",
                                    color: kTextGreenColor),
                                SizedBox(width: 9),
                                Text(
                                  "Трансляция",
                                  style: TextStyle(
                                      color: kTextGreenColor,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : Container()
              ],
            ),
          )
        ],
      ),
    );
  }
}

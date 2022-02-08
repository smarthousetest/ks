import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';

class TransportCard extends StatelessWidget {
  String timestart;
  String timestop;
  String one;
  String two;
  bool like;

  TransportCard({
    required this.timestart,
    required this.timestop,
    required this.one,
    required this.two,
    required this.like,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: kDecorationBox,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9, right: 9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  like
                      ? SvgPicture.asset("assets/icons/heartplus.svg")
                      : SvgPicture.asset("assets/icons/heartminus.svg")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "$timestart",
                        style: kTransporgGreyTextStyle,
                      ),
                      SizedBox(height: 20),
                      Text(
                        "$timestop",
                        style: kTransporgGreyTextStyle,
                      )
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [SvgPicture.asset("assets/icons/linetrans.svg")],
                  ),
                  SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width - 160,
                        child: AutoSizeText(
                          "$one",
                          style: kContentTextStyle,
                        ),
                      ),
                      SizedBox(height: 16),
                      Container(
                        width: MediaQuery.of(context).size.width - 160,
                        child: AutoSizeText(
                          "$two",
                          style: kContentTextStyle,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

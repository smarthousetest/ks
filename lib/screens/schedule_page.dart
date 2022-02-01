import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/widgets/schedule_card.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Stack(
          children: [
            RotatedBox(
              quarterTurns: 2,
              child: SvgPicture.asset(
                "assets/images/greenbg.svg",
                fit: BoxFit.contain,
                alignment: Alignment.bottomCenter,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    iconSize: 40,
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/search.svg")),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon:
                              SvgPicture.asset("assets/icons/favourites.svg")),
                      IconButton(
                          iconSize: 40,
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/icons/filter.svg"))
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ScheduleCard(
                  time: "9:00-12:00",
                  title: "По теме Казанские инновации и инвестиции в них",
                  zal: "Зал Достоевский",
                  trans: true,
                  favourites: false),
              ScheduleCard(
                  time: "9:00-12:00",
                  title: "По теме Казанские инновации и инвестиции в них",
                  zal: "Зал Достоевский",
                  trans: true,
                  favourites: true),
              ScheduleCard(
                  time: "9:00-12:00",
                  title: "По теме Казанские инновации и инвестиции в них",
                  zal: "Зал Достоевский",
                  trans: false,
                  favourites: false)
            ],
          ),
        )
      ],
    ));
  }
}

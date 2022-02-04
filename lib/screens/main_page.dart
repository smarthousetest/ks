import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/screens/%D1%81ontacts_page.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SvgPicture.asset(
                  "assets/images/whitebg.svg",
                  fit: BoxFit.fitWidth,
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              iconSize: 40,
                              onPressed: () {},
                              icon:
                                  SvgPicture.asset("assets/icons/search.svg")),
                          IconButton(
                              iconSize: 40,
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  "assets/icons/notification.svg"))
                        ],
                      ),
                      Center(
                        child: SvgPicture.asset(
                          "assets/images/logoen.svg",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "${AppLocalizations.of(context)?.applynow}",
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "${AppLocalizations.of(context)?.eventprogram}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.all(6),
                    child: Row(
                      children: [
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 11, bottom: 5, left: 25, right: 25),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/business.svg",
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                      "${AppLocalizations.of(context)?.business}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14))
                                ],
                              ),
                            ),
                            decoration: kDecorationBox),
                        SizedBox(width: 5),
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 11, bottom: 5, left: 25, right: 25),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/cultural.svg",
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                      "${AppLocalizations.of(context)?.cultural}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14))
                                ],
                              ),
                            ),
                            decoration: kDecorationBox),
                        SizedBox(width: 5),
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 11, bottom: 5, left: 25, right: 25),
                              child: Column(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/industrial.svg",
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                      "${AppLocalizations.of(context)?.industrial}",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14))
                                ],
                              ),
                            ),
                            decoration: kDecorationBox)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/speakerpage');
                  },
                  child: Container(
                    decoration: kDecorationBox,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8, left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${AppLocalizations.of(context)?.speakers}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "${AppLocalizations.of(context)?.informationaboutspeakers}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 16, top: 8, bottom: 8),
                          child: SvgPicture.asset("assets/icons/speakers.svg"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: kDecorationBox,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${AppLocalizations.of(context)?.news}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "${AppLocalizations.of(context)?.actualnews}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                        child: SvgPicture.asset("assets/icons/news.svg"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "${AppLocalizations.of(context)?.partners}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "${AppLocalizations.of(context)?.learnmore}",
                            style: TextStyle(
                                color: Color(0xFFBDBDBD),
                                fontWeight: FontWeight.w400,
                                fontSize: 14),
                          ),
                          SizedBox(width: 5),
                          SvgPicture.asset("assets/icons/right.svg")
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox,
                          child: Image.asset(
                            "assets/images/logom.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox,
                          child: Image.asset(
                            "assets/images/cat.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox,
                          child: Image.asset(
                            "assets/images/logom.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox,
                          child: Image.asset(
                            "assets/images/cat.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox,
                          child: Image.asset(
                            "assets/images/logom.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox,
                          child: Image.asset(
                            "assets/images/cat.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox,
                          child: Image.asset(
                            "assets/images/logom.png",
                            fit: BoxFit.cover,
                          ),
                        )
                      ],
                    )),
                SizedBox(height: 16),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "${AppLocalizations.of(context)?.eventmap}",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    "assets/images/map.png",
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  decoration: kDecorationBox,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8.0, bottom: 8, left: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${AppLocalizations.of(context)?.transport}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18),
                            ),
                            SizedBox(height: 3),
                            Text(
                              "${AppLocalizations.of(context)?.transportschedule}",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 16, top: 8, bottom: 8),
                        child: SvgPicture.asset("assets/icons/schedule.svg"),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/contactpage');
                  },
                  child: Container(
                    decoration: kDecorationBox,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, bottom: 8, left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${AppLocalizations.of(context)?.contacts}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              ),
                              SizedBox(height: 3),
                              Text(
                                "${AppLocalizations.of(context)?.helpfulinformation}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 16, top: 8, bottom: 8),
                          child: SvgPicture.asset("assets/icons/contacts.svg"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

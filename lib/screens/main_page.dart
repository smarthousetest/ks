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
                          Container(
                            child: Row(
                              children: [
                                IconButton(
                                    iconSize: 40,
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/settingsPage');
                                    },
                                    icon: SvgPicture.asset(
                                        "assets/icons/settings.svg")),
                                IconButton(
                                    iconSize: 40,
                                    onPressed: () {
                                      Navigator.pushNamed(
                                          context, '/notificationpage');
                                    },
                                    icon: SvgPicture.asset(
                                        "assets/icons/notification.svg")),
                              ],
                            ),
                          )
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/evantputpage');
                      },
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
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "${AppLocalizations.of(context)?.livestream}",
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
                          decoration: kDecorationBox.copyWith(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/images/cat.png"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/player.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox.copyWith(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/images/cat.png"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/player.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox.copyWith(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/images/cat.png"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/player.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox.copyWith(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/images/cat.png"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/player.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox.copyWith(
                            color: Colors.black,
                            image: DecorationImage(
                              image: AssetImage("assets/images/cat.png"),
                              fit: BoxFit.cover,
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.4),
                                  BlendMode.dstATop),
                            ),
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/player.svg",
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        SizedBox(width: 10),
                      ],
                    )),
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/newspage');
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
                          padding: const EdgeInsets.only(
                              right: 16, top: 8, bottom: 8),
                          child: SvgPicture.asset("assets/icons/news.svg"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/partnerspage');
                  },
                  child: Row(
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
                ),
                SizedBox(height: 16),
                SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox.copyWith(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://kazansummit.ru/upload/iblock/14a/Logo_%D0%90%D0%BA_%D0%91%D0%B0%D1%80%D1%81_%D0%91%D0%B0%D0%BD%D0%BA_%D0%B1%D0%B5%D0%BB%D1%8B%D0%B9_%D1%84%D0%BE%D0%BD.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox.copyWith(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://kazansummit.ru/upload/resize_cache/iblock/feb/180_120_1/ulfzhn-image014_754x450C_55e.jpg"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox.copyWith(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://kazansummit.ru/upload/resize_cache/iblock/669/180_120_1/Coat_of_Arms_of_Tatarstan_gerb.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox.copyWith(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://kazansummit.ru/upload/resize_cache/iblock/cc2/180_120_1/invest_tatrstan.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: MediaQuery.of(context).size.width / 4,
                          width: MediaQuery.of(context).size.width / 4,
                          decoration: kDecorationBox.copyWith(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://kazansummit.ru/upload/resize_cache/iblock/4b8/180_120_1/tida.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
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
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/transportpage');
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
                          padding: const EdgeInsets.only(
                              right: 16, top: 8, bottom: 8),
                          child: SvgPicture.asset("assets/icons/schedule.svg"),
                        )
                      ],
                    ),
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

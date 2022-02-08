import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/schedule_card.dart';

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      color: kBacColor,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

class SpeakerPageOpen extends StatefulWidget {
  const SpeakerPageOpen({Key? key}) : super(key: key);

  @override
  State<SpeakerPageOpen> createState() => _SpeakerPageOpenState();
}

class _SpeakerPageOpenState extends State<SpeakerPageOpen> {
  @override
  Widget build(BuildContext context) {
    List<Tab> topTabs = <Tab>[
      new Tab(text: '${AppLocalizations.of(context)?.biography}'),
      new Tab(text: '${AppLocalizations.of(context)?.sessions}')
    ];

    return Scaffold(
        body: DefaultTabController(
            length: 2,
            child: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  SliverAppBar(
                    elevation: 0,
                    iconTheme: IconThemeData(color: kIconColor),
                    backgroundColor: kBacColor,
                    pinned: true,
                    snap: true,
                    floating: true,
                    expandedHeight: 190.0,
                    flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      title: Text('Иван Иванвич Иванов',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          textAlign: TextAlign.center),
                      background: Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: SafeArea(
                          child: CircularProfileAvatar(
                            '',
                            borderColor: kBacColor,
                            child: Image.asset(
                              "assets/images/cat.png",
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                            radius: 65,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverPersistentHeader(
                    delegate: _SliverAppBarDelegate(
                      TabBar(
                        indicatorColor: kTextGreenColor,
                        unselectedLabelColor: kTextGreyColor,
                        unselectedLabelStyle:
                            TextStyle(fontWeight: FontWeight.w400),
                        labelColor: kTextGreenColor,
                        labelStyle: TextStyle(fontWeight: FontWeight.w700),
                        tabs: topTabs,
                      ),
                    ),
                    pinned: true,
                  ),
                ];
              },
              body: TabBarView(
                children: [
                  Container(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Text(
                                  "${AppLocalizations.of(context)?.jobtitle}:",
                                  style: kSpeckerTextStyle,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "Менеджер",
                                  style: kContentTextStyle,
                                )
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Text(
                                  "${AppLocalizations.of(context)?.organization}:",
                                  style: kSpeckerTextStyle,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "ООО Таттелеком",
                                  style: kContentTextStyle,
                                )
                              ],
                            ),
                            SizedBox(height: 16),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${AppLocalizations.of(context)?.description}:",
                                  style: kSpeckerTextStyle,
                                ),
                                SizedBox(width: 3),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width - 160,
                                  child: Text(
                                    "МенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджерМенеджер",
                                    style: kContentTextStyle,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Container(
                          color: Color(0xFFE2EAEB),
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "19 МАЯ",
                                style: kContentTextStyle.copyWith(
                                    color: Color(0xFF3B8992)),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "Четверг",
                                style: kContentTextStyle.copyWith(
                                    fontSize: 12, color: Color(0xFF828282)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        ScheduleCard(
                            time: "9:00-12:00",
                            title:
                                "По теме Казанские инновации и инвестиции в них",
                            zal: "Зал Достоевский",
                            trans: true,
                            favourites: true),
                        SizedBox(height: 16),
                        Container(
                          color: Color(0xFFE2EAEB),
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "19 МАЯ",
                                style: kContentTextStyle.copyWith(
                                    color: Color(0xFF3B8992)),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "Четверг",
                                style: kContentTextStyle.copyWith(
                                    fontSize: 12, color: Color(0xFF828282)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        ScheduleCard(
                            time: "9:00-12:00",
                            title:
                                "По теме Казанские инновации и инвестиции в них",
                            zal: "Зал Достоевский",
                            trans: true,
                            favourites: true),
                        SizedBox(height: 16),
                        Container(
                          color: Color(0xFFE2EAEB),
                          padding: EdgeInsets.only(
                              top: 5, bottom: 5, left: 16, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "19 МАЯ",
                                style: kContentTextStyle.copyWith(
                                    color: Color(0xFF3B8992)),
                              ),
                              SizedBox(width: 3),
                              Text(
                                "Четверг",
                                style: kContentTextStyle.copyWith(
                                    fontSize: 12, color: Color(0xFF828282)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 16),
                        ScheduleCard(
                            time: "9:00-12:00",
                            title:
                                "По теме Казанские инновации и инвестиции в них",
                            zal: "Зал Достоевский",
                            trans: true,
                            favourites: true),
                        SizedBox(height: 16),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}

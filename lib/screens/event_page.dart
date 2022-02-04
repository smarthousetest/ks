import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:kazansummit/widgets/speaker_card.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class EventPage extends StatefulWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> with TickerProviderStateMixin {
  late TabController _controller;
  final List<Tab> topTabs = <Tab>[
    new Tab(text: 'Описание'),
    new Tab(text: 'Спикеры')
  ];

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool trans = true;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kBacColor,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(110),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SvgPicture.asset("assets/icons/left.svg")),
                      ),
                    ],
                  )),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: AutoSizeText(
                        "ПАНЕЛЬНАЯ ДИСКУССИЯ VII МАШИНОСТРОИТЕЛЬНОГО КЛАСТЕРНОГО ФОРУМА: РОБОТИЗАЦИЯ ПРОИЗВОДСТВА: ВРЕМЕННАЯ ПРИВИВКА ИЛИ НОВАЯ ВОЗМОЖНОСТЬ ДЛЯ КРАТНОГО РОСТА",
                        maxLines: 6,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 20),
                        child:
                            SvgPicture.asset("assets/icons/favouritesplus.svg"),
                      ),
                    ],
                  )),
                ],
              ),
              TabBar(
                indicatorColor: kTextGreenColor,
                unselectedLabelColor: kTextGreyColor,
                unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w400),
                labelColor: kTextGreenColor,
                labelStyle: TextStyle(fontWeight: FontWeight.w700),
                controller: _controller,
                tabs: topTabs,
              ),
            ],
          ),
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/calendar.svg",
                        color: kIconColor),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Пн, 12 мая 2022", style: kContentTextStyle),
                        SizedBox(height: 2),
                        Text("9:00-12:00",
                            style: kContentTextStyle.copyWith(
                                color: Color(0xFF828282)))
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/notifplus.svg",
                        color: kIconColor),
                    SizedBox(width: 20),
                    Text("Напомнить за 10 минут", style: kContentTextStyle),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Switch(
                              activeColor: kButtonColor,
                              value: trans,
                              onChanged: (bool value) {
                                print("ffff");
                              })
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/location.svg",
                        color: kIconColor),
                    SizedBox(width: 20),
                    Text("Зал Достоевский", style: kContentTextStyle),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/zoom.svg",
                        color: kIconColor),
                    SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        UrlLauncher.launch("https://zoom.us/j/123456789");
                      },
                      child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(9)),
                              color: Color(0xFFF0F0F0)),
                          child: Text("https://zoom.us/j/123456789",
                              style: kContentTextStyle)),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset("assets/icons/alignleft.svg",
                        color: kIconColor),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Лекция / финансы", style: kContentTextStyle),
                        SizedBox(height: 2),
                        SingleChildScrollView(
                          child: Container(
                            width: MediaQuery.of(context).size.width - 100,
                            child: Expanded(
                              child: AutoSizeText(
                                "Описание если есть Описание если естьОписание если естьОписание если естьОписание если естьОписание если",
                                style: kContentTextStyle.copyWith(
                                    fontWeight: FontWeight.w300),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          //! Вторая страница
          Container(
            margin:
                const EdgeInsets.only(left: 16, right: 16, top: 24, bottom: 20),
            child: Column(
              children: [
                SpeakerCard(
                    image:
                        "https://i11.fotocdn.net/s121/812174e17c001a41/public_pin_l/2764195349.jpg",
                    name: "Дмитрий Артюхов",
                    firm: "ООО Татнефть",
                    post:
                        "Губернатор Ямало-Ненецкого автономного округаГубернатор Ямало-Ненецкого автономного округаГубернатор Ямало-Ненецкого автономного округаГубернатор Ямало-Ненецкого автономного округаГубернатор Ямало-Ненецкого автономного округаГубернатор Ямало-Ненецкого автономного округаГубернатор Ямало-Ненецкого автономного округа")
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:kazansummit/widgets/schedule_card.dart';
import 'dart:math' as math;
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage>
    with TickerProviderStateMixin {
  late TabController _controller;
  final List<Tab> topTabs = <Tab>[
    new Tab(text: '19/05'),
    new Tab(text: '20/05'),
    new Tab(text: '21/05'),
  ];

  @override
  void initState() {
    super.initState();

    _controller = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBacColor,
        leading: IconButton(
            iconSize: 40,
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg")),
        actions: [
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/favourites.svg")),
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/filter.svg"))
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: Column(
            children: [
              DefaultTabController(
                length: 5,
                child: ButtonsTabBar(
                    backgroundColor: kButtonColor,
                    unselectedBackgroundColor: kUnSelectProgramColor,
                    labelStyle: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    unselectedLabelStyle: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.normal),
                    contentPadding: EdgeInsets.only(
                        top: 10, bottom: 10, left: 20, right: 20),
                    radius: 9,
                    tabs: [
                      Tab(text: "Деловая"),
                      Tab(text: "Культурная"),
                      Tab(text: "Промышенная"),
                      Tab(text: "Кушать"),
                      Tab(text: "Ашарга"),
                    ]),
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
      body: SingleChildScrollView(
        child: SafeArea(
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
                  favourites: false),
              ScheduleCard(
                  time: "9:00-12:00",
                  title: "По теме Казанские инновации и инвестиции в них",
                  zal: "Зал Достоевский",
                  trans: false,
                  favourites: false),
              ScheduleCard(
                  time: "9:00-12:00",
                  title: "По теме Казанские инновации и инвестиции в них",
                  zal: "Зал Достоевский",
                  trans: false,
                  favourites: false)
            ],
          ),
        ),
      ),
    );
  }
}

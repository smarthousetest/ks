import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/screens/%D1%81ontacts_page.dart';
import 'package:kazansummit/screens/main_page.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:kazansummit/screens/profile_page.dart';
import 'package:kazansummit/screens/schedule_page.dart';
import 'package:kazansummit/screens/services_page.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/sliding_filter.dart';

final List<Widget> _widgetOptions = <Widget>[
  MainPage(),
  SchedulePage(),
  ServicesPage(),
  ProfilePage()
];

class Management extends StatelessWidget {
  const Management({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationControllerSelect, int>(
        builder: (context, select) => Scaffold(
              body: _widgetOptions.elementAt(select),
              bottomNavigationBar: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: kShadowColor.withOpacity(0.4),
                        spreadRadius: 4,
                        blurRadius: 10, // changes position of shadow
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    )),
                child: CustomNavigationBar(
                    iconSize: 30.0,
                    elevation: 0,
                    opacity: 0.0,
                    borderRadius: Radius.circular(8),
                    selectedColor: Color(0xFF3B8992),
                    strokeColor: Color(0xFF3B8992),
                    unSelectedColor: Color(0xFFBDBDBD),
                    backgroundColor: Colors.white,
                    items: [
                      CustomNavigationBarItem(
                        title: Text(
                          "${AppLocalizations.of(context)?.main}",
                          style: TextStyle(
                              color: select == 0
                                  ? Color(0xFF3B8992)
                                  : Color(0xFFBDBDBD),
                              fontWeight: select == 0
                                  ? FontWeight.w700
                                  : FontWeight.w400),
                        ),
                        icon: SvgPicture.asset(
                          "assets/icons/home.svg",
                          color: select == 0
                              ? Color(0xFF3B8992)
                              : Color(0xFFBDBDBD),
                        ),
                      ),
                      CustomNavigationBarItem(
                        title: Text(
                          "${AppLocalizations.of(context)?.program}",
                          style: TextStyle(
                              color: select == 1
                                  ? Color(0xFF3B8992)
                                  : Color(0xFFBDBDBD),
                              fontWeight: select == 1
                                  ? FontWeight.w700
                                  : FontWeight.w400),
                        ),
                        icon: SvgPicture.asset(
                          "assets/icons/calendar.svg",
                          color: select == 1
                              ? Color(0xFF3B8992)
                              : Color(0xFFBDBDBD),
                        ),
                      ),
                      CustomNavigationBarItem(
                        title: Text(
                          "${AppLocalizations.of(context)?.services}",
                          style: TextStyle(
                              color: select == 2
                                  ? Color(0xFF3B8992)
                                  : Color(0xFFBDBDBD),
                              fontWeight: select == 2
                                  ? FontWeight.w700
                                  : FontWeight.w400),
                        ),
                        icon: SvgPicture.asset(
                          "assets/icons/briefcase.svg",
                          color: select == 2
                              ? Color(0xFF3B8992)
                              : Color(0xFFBDBDBD),
                        ),
                      ),
                      CustomNavigationBarItem(
                        title: Text(
                          "${AppLocalizations.of(context)?.profile}",
                          style: TextStyle(
                              color: select == 3
                                  ? Color(0xFF3B8992)
                                  : Color(0xFFBDBDBD),
                              fontWeight: select == 3
                                  ? FontWeight.w700
                                  : FontWeight.w400),
                        ),
                        icon: SvgPicture.asset(
                          "assets/icons/user.svg",
                          color: select == 3
                              ? Color(0xFF3B8992)
                              : Color(0xFFBDBDBD),
                        ),
                      ),
                    ],
                    isFloating: false,
                    currentIndex: select,
                    onTap: (index) {
                      context
                          .read<BottomNavigationControllerSelect>()
                          .select(index);
                    }),
              ),
            ));
  }
}

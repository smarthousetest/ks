import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/notification_card.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBacColor,
          iconTheme: IconThemeData(color: kIconColor),
          elevation: 0,
          centerTitle: true,
          title: Text("${AppLocalizations.of(context)?.notifications}",
              style: kAppBarTextStyle),
        ),
        body:

            //!Если уведомлений нет

            //  Center(
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: [
            //       SvgPicture.asset("assets/icons/nonotifications.svg"),
            //       SizedBox(height: 16),
            //       Text("${AppLocalizations.of(context)?.nonotifications}",
            //           style: kContentTextStyle.copyWith(color: Color(0xFF828282))),
            //       SizedBox(height: 6),
            //       Text("${AppLocalizations.of(context)?.allthisnotifications}",
            //           style: kContentTextStyle.copyWith(color: Color(0xFFBDBDBD)))
            //     ],
            //   ),
            // )
            //!Если уведомлений нет

            SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/notificationpageopen');
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: NotificationCard(
                        tema: "Тема уведомления",
                        time: "9 минут назад",
                        text:
                            "Текст уведомления Текст уведомления  Текст уведомления Текст уведомления ауламолывьдмулт ...",
                        active: true),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: NotificationCard(
                      tema: "Тема уведомления",
                      time: "9 минут назад",
                      text:
                          "Текст уведомления Текст уведомления  Текст уведомления Текст уведомления ауламолывьдмулт ...",
                      active: true),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: NotificationCard(
                      tema: "Тема уведомленияddddddddddddddddd",
                      time: "9 минут назад",
                      text:
                          "Текст уведомления Текст уведомления  Текст уведомления Текст уведомления ауламолывьдмулт ...",
                      active: false),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: NotificationCard(
                      tema: "Тема уведомления",
                      time: "9 минут назад",
                      text:
                          "Текст уведомления Текст уведомления  Текст уведомления Текст уведомления ауламолывьдмулт ...",
                      active: true),
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/news_card.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBacColor,
        iconTheme: IconThemeData(color: kIconColor),
        elevation: 0,
        centerTitle: true,
        title: Text("${AppLocalizations.of(context)?.news}",
            style: kAppBarTextStyle),
        actions: [
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/notification.svg"))
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 16, right: 16, top: 10, bottom: 6),
                  child: NewsCard(
                      date: "13/09/2021",
                      text:
                          "С 15 по 17 сентября 2021 года в г. Казани пройдет первая на территории СНГ XXIV Глобальная конференция TCI.",
                      url:
                          "https://kazansummit.ru/news/s-15-po-17-sentyabrya-2021-goda-v-g-kazani-proydet-pervaya-na-territorii-sng-xxiv-globalnaya-konfere/"),
                );
              })),
    );
  }
}

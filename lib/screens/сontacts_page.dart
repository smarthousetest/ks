import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;
import 'package:auto_size_text/auto_size_text.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBacColor,
        iconTheme: IconThemeData(color: kIconColor),
        elevation: 0,
        centerTitle: true,
        title: Text("${AppLocalizations.of(context)?.contacts}",
            style: kAppBarTextStyle),
        actions: [
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/notification.svg"))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/phone.svg",
                        color: kIconColor),
                    SizedBox(width: 12),
                    TextButton(
                        onPressed: () {
                          UrlLauncher.launch("tel://88435704001");
                        },
                        child: Text("+7 (843) 570-40-01",
                            style: kContentTextStyle))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/printer.svg",
                        color: kIconColor),
                    SizedBox(width: 12),
                    TextButton(
                        onPressed: () {
                          UrlLauncher.launch("tel://88435704001");
                        },
                        child: Text("+7 (843) 570-40-01",
                            style: kContentTextStyle))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/mail.svg",
                        color: kIconColor),
                    SizedBox(width: 12),
                    TextButton(
                        onPressed: () {
                          UrlLauncher.launch("mailto:info@kazansummit.ru");
                        },
                        child: Text("info@kazansummit.ru",
                            style: kContentTextStyle))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/location.svg",
                        color: kIconColor),
                    SizedBox(width: 12),
                    Expanded(
                      child: AutoSizeText(
                          "${AppLocalizations.of(context)?.address}",
                          style: kContentTextStyle,
                          maxLines: 2),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 38),
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  child: Image.asset(
                    "assets/images/map.png",
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        "${AppLocalizations.of(context)?.feedback}",
                        style: TextStyle(fontSize: 16),
                      ),
                    )),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: kIconColor,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: IconButton(
                        color: kIconColor,
                        onPressed: () {
                          UrlLauncher.launch(
                              "https://twitter.com/InvestTatarstan");
                        },
                        icon: SvgPicture.asset("assets/icons/tw.svg")),
                  ),
                  SizedBox(width: 29),
                  Container(
                    decoration: BoxDecoration(
                        color: kIconColor,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    child: IconButton(
                        color: kIconColor,
                        onPressed: () {
                          UrlLauncher.launch(
                              "https://www.instagram.com/kazansummit/");
                        },
                        icon: SvgPicture.asset(
                          "assets/icons/instagram.svg",
                          color: Colors.white,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

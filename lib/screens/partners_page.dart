import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PartnersPage extends StatelessWidget {
  const PartnersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBacColor,
        iconTheme: IconThemeData(color: kIconColor),
        elevation: 0,
        centerTitle: true,
        title: Text("${AppLocalizations.of(context)?.partners}",
            style: kAppBarTextStyle),
        actions: [
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/notification.svg"))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //////////!-------------------------------------------------------
            SizedBox(height: 8),
            Container(
                color: Color(0xFFE2EAEB),
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${AppLocalizations.of(context)?.organization}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF3B8992),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width / 3.5,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://kazansummit.ru/upload/resize_cache/iblock/cc2/180_120_1/invest_tatrstan.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 3.5,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://kazansummit.ru/upload/resize_cache/iblock/669/180_120_1/Coat_of_Arms_of_Tatarstan_gerb.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.width / 3.5,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://kazansummit.ru/upload/resize_cache/iblock/4b8/180_120_1/tida.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),

            //////////!-------------------------------------------------------
            SizedBox(height: 8),
            Container(
                color: Color(0xFFE2EAEB),
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${AppLocalizations.of(context)?.generalpartner}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF3B8992),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width / 3.5,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://kazansummit.ru/upload/iblock/14a/Logo_%D0%90%D0%BA_%D0%91%D0%B0%D1%80%D1%81_%D0%91%D0%B0%D0%BD%D0%BA_%D0%B1%D0%B5%D0%BB%D1%8B%D0%B9_%D1%84%D0%BE%D0%BD.png"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),

            //////////!-------------------------------------------------------
            SizedBox(height: 8),
            Container(
                color: Color(0xFFE2EAEB),
                padding: EdgeInsets.all(8),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "${AppLocalizations.of(context)?.officialpartner}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF3B8992),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Wrap(
                spacing: 10,
                alignment: WrapAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width / 3.5,
                    width: MediaQuery.of(context).size.width / 3.5,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://kazansummit.ru/upload/resize_cache/iblock/feb/180_120_1/ulfzhn-image014_754x450C_55e.jpg"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/dropdown_input.dart';
import 'package:kazansummit/widgets/transport_card.dart';

class TransportPage extends StatefulWidget {
  const TransportPage({Key? key}) : super(key: key);

  @override
  _TransportPageState createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  List<String> fromlist = ["от1", "от12"];
  List<String> tolist = ["туда", "туда2"];

  String? selectetfrom;
  String? selectetto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBacColor,
        iconTheme: IconThemeData(color: kIconColor),
        elevation: 0,
        centerTitle: true,
        title: Text("${AppLocalizations.of(context)?.transport}",
            style: kAppBarTextStyle),
        actions: [
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/likes.svg")),
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/notification.svg"))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: kDecorationBox,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset("assets/icons/ellipse.svg"),
                              SizedBox(width: 10),
                              SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width - 160,
                                  child: Form(
                                      child: DropdownInput(
                                          text:
                                              "${AppLocalizations.of(context)?.from}",
                                          list: fromlist,
                                          selectedvalue: selectetfrom)))
                            ],
                          ),
                          SizedBox(height: 16),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                "assets/icons/ellipse.svg",
                                color: Color(0xFFF8AC1A),
                              ),
                              SizedBox(width: 10),
                              SizedBox(
                                width: MediaQuery.of(context).size.width - 160,
                                child: Form(
                                    child: DropdownInput(
                                        text:
                                            "${AppLocalizations.of(context)?.to}",
                                        list: tolist,
                                        selectedvalue: selectetto)),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(width: 12),
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: kIconColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: IconButton(
                                color: kIconColor,
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/icons/strelkiii.svg",
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            TransportCard(
                timestart: "11:30",
                timestop: "11:30",
                one: "Проспект  победы остановка",
                two: "ЮДИНО",
                like: true),
            SizedBox(height: 16),
            TransportCard(
                timestart: "11:30",
                timestop: "11:30",
                one: "Проспект  победы остановка",
                two: "ЮДИНО",
                like: false),
            SizedBox(height: 16),
            TransportCard(
                timestart: "11:30",
                timestop: "11:30",
                one: "Проспект  победы остановка",
                two: "ЮДИНО",
                like: false),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/speaker_card.dart';

class SpeakerPage extends StatelessWidget {
  const SpeakerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBacColor,
          iconTheme: IconThemeData(color: kIconColor),
          elevation: 0,
          centerTitle: true,
          title: Text("Спикеры", style: kAppBarTextStyle),
          actions: [
            IconButton(
                iconSize: 40,
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/notification.svg"))
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(60),
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 6),
              child: TextFormField(
                //  readOnly: true,
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  hintText: 'Поиск',
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 14.0,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                    color: Color(0xFF828282),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFADB3BD), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFADB3BD), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 10, bottom: 6),
                    child: SpeakerCard(
                        image:
                            "https://i11.fotocdn.net/s121/812174e17c001a41/public_pin_l/2764195349.jpg",
                        name: "Дмитрий Артюхов",
                        firm: "ООО Татнефть",
                        post: "Губернатор Ямало-Ненецкого автономного округа"),
                  );
                })));
  }
}

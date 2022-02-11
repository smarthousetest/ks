import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/speaker_card.dart';
import 'package:kazansummit/widgets/text_input.dart';

final searchTextFieldControler = TextEditingController();

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
          title: Text("${AppLocalizations.of(context)?.speakers}",
              style: kAppBarTextStyle),
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
                child: TextInput(
                  text: "${AppLocalizations.of(context)?.search}",
                  textFieldControler: searchTextFieldControler,
                  icon: Icon(
                    Icons.search,
                  ),
                )),
          ),
        ),
        body: SafeArea(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/speakerpageopen');
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16, right: 16, top: 10, bottom: 6),
                      child: SpeakerCard(
                          image:
                              "https://i11.fotocdn.net/s121/812174e17c001a41/public_pin_l/2764195349.jpg",
                          name: "Дмитрий Артюхов",
                          firm: "ООО Татнефть",
                          post:
                              "Губернатор Ямало-Ненецкого автономного округа"),
                    ),
                  );
                })));
  }
}

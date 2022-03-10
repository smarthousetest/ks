import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/text_input.dart';

final textTextFieldControler = TextEditingController();

class B2bPageOpen extends StatefulWidget {
  const B2bPageOpen({Key? key}) : super(key: key);

  @override
  State<B2bPageOpen> createState() => _B2bPageOpenState();
}

class _B2bPageOpenState extends State<B2bPageOpen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBacColor,
        iconTheme: IconThemeData(color: kIconColor),
        elevation: 0,
        centerTitle: true,
        title: Text("B2B", style: kAppBarTextStyle),
        actions: [
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/notification.svg"))
        ],
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Form(
                  child: Column(
                children: [
                  SizedBox(height: 2),
                  CircularProfileAvatar(
                    '',
                    child: Image.network(
                      "https://i11.fotocdn.net/s121/812174e17c001a41/public_pin_l/2764195349.jpg",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    radius: 32,
                  ),
                  SizedBox(height: 7),
                  Text("Терентьева Татьяна", style: kContentTextStyle),
                  SizedBox(height: 7),
                  Text("ttvladimirovna777@gmail.com",
                      style: const TextStyle(
                          color: Color(0xFF008870),
                          fontWeight: FontWeight.w700,
                          fontSize: 16)),
                  SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.9,
                    child: TextInput(
                        text: "${AppLocalizations.of(context)?.yourmessage}",
                        textFieldControler: textTextFieldControler,
                        multline: true),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: textTextFieldControler.text != ""
                              ? Color(0xFF3B8992)
                              : Color(0xFFBDBDBD),
                        ),
                        onPressed: () => tabController
                            .animateTo((tabController.index + 1) % 2),
                        child: Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Text(
                            "${AppLocalizations.of(context)?.send}",
                            style: TextStyle(fontSize: 16),
                          ),
                        )),
                  )
                ],
              )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/chat.svg"),
                      SizedBox(height: 16),
                      Text(
                          "${AppLocalizations.of(context)?.messagehasbeensent}",
                          style: kContentTextStyle.copyWith(
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pop(context);
                      },
                      child: Text(
                          "${AppLocalizations.of(context)?.gobackto} B2B",
                          style: kContentTextStyle.copyWith(
                              color: Color(0xFF3B8992))),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

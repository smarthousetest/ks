import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

final temaTextFieldControler = TextEditingController();
final textTextFieldControler = TextEditingController();

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  State<FeedbackPage> createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage>
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
        title: Text("${AppLocalizations.of(context)?.feedback}",
            style: kAppBarTextStyle),
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
                  TextFormField(
                      onChanged: (newValue) {
                        setState(() {});
                      },
                      //  readOnly: true,
                      controller: temaTextFieldControler,
                      decoration: kinputDecorationDesign.copyWith(
                          labelText: "${AppLocalizations.of(context)?.subject}",
                          fillColor: temaTextFieldControler.text != ""
                              ? Colors.white
                              : Color(0xFFF6F6F6),
                          labelStyle: TextStyle(
                              color: temaTextFieldControler.text != ""
                                  ? Color(0xFF008870)
                                  : Color(0xFFBDBDBD)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: temaTextFieldControler.text != ""
                                      ? Color(0xFF008870)
                                      : Color(0xFFBDBDBD))))),
                  SizedBox(height: 24),
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height / 1.7,
                    child: TextFormField(
                        expands: true,
                        maxLines: null,
                        onChanged: (newValue) {
                          setState(() {});
                        },
                        textAlignVertical: TextAlignVertical.top,
                        controller: textTextFieldControler,
                        decoration: kinputDecorationDesign.copyWith(
                            alignLabelWithHint: true,
                            labelText:
                                "${AppLocalizations.of(context)?.yourcomment}",
                            fillColor: textTextFieldControler.text != ""
                                ? Colors.white
                                : Color(0xFFF6F6F6),
                            labelStyle: TextStyle(
                              color: textTextFieldControler.text != ""
                                  ? Color(0xFF008870)
                                  : Color(0xFFBDBDBD),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: textTextFieldControler.text != ""
                                        ? Color(0xFF008870)
                                        : Color(0xFFBDBDBD))))),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: textTextFieldControler.text != "" &&
                                  temaTextFieldControler.text != ""
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
                      Text("${AppLocalizations.of(context)?.thanks}",
                          style: kContentTextStyle.copyWith(
                              fontWeight: FontWeight.w700)),
                      SizedBox(height: 6),
                      Text(
                          "${AppLocalizations.of(context)?.thanksforthefeedback}",
                          style: kContentTextStyle.copyWith(
                              color: Color(0xFF828282)))
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
                          "${AppLocalizations.of(context)?.gobacktomain}",
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

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/cubit/all/state.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/dropdown_input.dart';
import 'package:kazansummit/widgets/text_input.dart';
import 'package:dotted_border/dotted_border.dart';

final textcontroller1 = TextEditingController();
final textcontroller2 = TextEditingController();
final textcontroller3 = TextEditingController();
final textcontroller4 = TextEditingController();

final textcontroller5 = TextEditingController();
final textcontroller6 = TextEditingController();
final textcontroller7 = TextEditingController();
final textcontroller8 = TextEditingController();
final textcontroller9 = TextEditingController();

final textcontroller10 = TextEditingController();
final textcontroller11 = TextEditingController();
final textcontroller12 = TextEditingController();

final textcontroller13 = TextEditingController();
final textcontroller14 = TextEditingController();
final textcontroller15 = TextEditingController();
final textcontroller16 = TextEditingController();

final textcontroller17 = TextEditingController();
final textcontroller18 = TextEditingController();
final textcontroller19 = TextEditingController();
final textcontroller20 = TextEditingController();

final textcontroller21 = TextEditingController();

String? selectedvalue1;
String? selectedvalue2;
String? selectedvalue3;
String? selectedvalue4;
String? selectedvalue5;
String? selectedvalue6;

String? selectedvalue7;
String? selectedvalue8;

class ClaimEditPage extends StatefulWidget {
  const ClaimEditPage({Key? key}) : super(key: key);

  @override
  _ClaimEditPageState createState() => _ClaimEditPageState();
}

class _ClaimEditPageState extends State<ClaimEditPage> {
  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context)!.settings;
    String id = settings.arguments as String;

    context.read<ClaimDeleteCubit>().stream.listen((state) {
      if (state is ClaimDeleteClaimState) {
        // SchedulerBinding.instance?.addPostFrameCallback((_) {
        context.read<ProfilePageCubit>().fetchProfilePage();
        Navigator.of(context)
            .pushNamedAndRemoveUntil('/main', (Route<dynamic> route) => false);
        // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        //   content: Text('В скором времени информация обновится!'),
        // ));
        // });
      }
    });

    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBacColor,
          iconTheme: IconThemeData(color: kIconColor),
          elevation: 0,
          centerTitle: true,
          title: Text("${AppLocalizations.of(context)?.application}",
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
              const SizedBox(height: 6),
              const Center(
                child: Text("KazanSummit2022",
                    style: TextStyle(
                        color: Color(0xFF3B8992),
                        fontWeight: FontWeight.w700,
                        fontSize: MediumTextSize)),
              ),
              const SizedBox(height: 16),
              ExpansionTile(
                collapsedBackgroundColor: Color(0xFFE2EAEB),
                backgroundColor: Color(0xFFE2EAEB),
                title: Text("Ddd $id"),
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: kBacColor,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CircularProfileAvatar(
                              "https://trikky.ru/wp-content/blogs.dir/1/files/2019/01/24/koty-zhivotnye-665.jpg",
                              radius: 52),
                        ),
                        const SizedBox(height: 16),
                        DropdownInput(
                            text: "text",
                            list: ["one", "two"],
                            selectedvalue: selectedvalue1),
                        const SizedBox(height: 16),
                        DropdownInput(
                            text: "text",
                            list: ["one", "two"],
                            selectedvalue: selectedvalue2),
                        const SizedBox(height: 16),
                        DropdownInput(
                            text: "text",
                            list: ["one", "two"],
                            selectedvalue: selectedvalue3),
                        const SizedBox(height: 16),
                        DropdownInput(
                            text: "text",
                            list: ["one", "two"],
                            selectedvalue: selectedvalue4),
                        const SizedBox(height: 16),
                        TextInput(
                            text: "text", textFieldControler: textcontroller1),
                        const SizedBox(height: 16),
                        TextInput(
                            text: "text", textFieldControler: textcontroller2),
                        const SizedBox(height: 16),
                        TextInput(
                          text: "text",
                          textFieldControler: textcontroller3,
                          icon2: Padding(
                            padding: const EdgeInsets.all(15),
                            child: SvgPicture.asset(
                              "assets/icons/calendar.svg",
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextInput(
                            text: "text", textFieldControler: textcontroller4),
                        const SizedBox(height: 16),
                        DropdownInput(
                            text: "text",
                            list: ["one", "two"],
                            selectedvalue: selectedvalue5),
                        const SizedBox(height: 16),
                        DropdownInput(
                            text: "text",
                            list: ["one", "two"],
                            selectedvalue: selectedvalue6),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Checkbox(value: false, onChanged: (val) {}),
                            Text("data")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              ExpansionTile(
                  collapsedBackgroundColor: Color(0xFFE2EAEB),
                  backgroundColor: Color(0xFFE2EAEB),
                  title: Text("Ddd"),
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        color: kBacColor,
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller5),
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller6),
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller7),
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller8),
                              const SizedBox(height: 16),
                              DropdownInput(
                                  text: "text",
                                  list: ["one", "two"],
                                  selectedvalue: selectedvalue7),
                              const SizedBox(height: 16),
                              DropdownInput(
                                  text: "text",
                                  list: ["one", "two"],
                                  selectedvalue: selectedvalue8),
                              const SizedBox(height: 16),
                              Container(
                                height: 80,
                                child: TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller9,
                                  multline: true,
                                ),
                              ),
                              const SizedBox(height: 16),
                            ]))
                  ]),
              const SizedBox(height: 16),
              ExpansionTile(
                  collapsedBackgroundColor: Color(0xFFE2EAEB),
                  backgroundColor: Color(0xFFE2EAEB),
                  title: Text("Ddd"),
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        color: kBacColor,
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller10),
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller11),
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller12),
                            ]))
                  ]),
              const SizedBox(height: 16),
              ExpansionTile(
                  collapsedBackgroundColor: Color(0xFFE2EAEB),
                  backgroundColor: Color(0xFFE2EAEB),
                  title: Text("Ddd"),
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        color: kBacColor,
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller13),
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller14),
                              const SizedBox(height: 16),
                              TextInput(
                                text: "text",
                                textFieldControler: textcontroller15,
                                icon2: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    "assets/icons/calendar.svg",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextInput(
                                text: "text",
                                textFieldControler: textcontroller16,
                                icon2: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    "assets/icons/clock.svg",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]))
                  ]),
              const SizedBox(height: 16),
              ExpansionTile(
                  collapsedBackgroundColor: Color(0xFFE2EAEB),
                  backgroundColor: Color(0xFFE2EAEB),
                  title: Text("Ddd"),
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        color: kBacColor,
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller17),
                              const SizedBox(height: 16),
                              TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller18),
                              const SizedBox(height: 16),
                              TextInput(
                                text: "text",
                                textFieldControler: textcontroller19,
                                icon2: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    "assets/icons/calendar.svg",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              TextInput(
                                text: "text",
                                textFieldControler: textcontroller20,
                                icon2: Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: SvgPicture.asset(
                                    "assets/icons/clock.svg",
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ]))
                  ]),
              const SizedBox(height: 16),
              ExpansionTile(
                  collapsedBackgroundColor: Color(0xFFE2EAEB),
                  backgroundColor: Color(0xFFE2EAEB),
                  title: Text("Ddd"),
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        color: kBacColor,
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              Container(
                                height: 160,
                                child: TextInput(
                                  text: "text",
                                  textFieldControler: textcontroller21,
                                  multline: true,
                                ),
                              ),
                              const SizedBox(height: 16),
                            ]))
                  ]),
              const SizedBox(height: 16),
              ExpansionTile(
                  collapsedBackgroundColor: Color(0xFFE2EAEB),
                  backgroundColor: Color(0xFFE2EAEB),
                  title: Text("Ddd"),
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        color: kBacColor,
                        padding: EdgeInsets.all(16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 16),
                              Text(
                                "data",
                                style: kContentTextStyle,
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                  width: double.infinity,
                                  child: DottedBorder(
                                      dashPattern: [9, 9],
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(9),
                                      color: Color(0xFF3B8992),
                                      child: Padding(
                                        padding: const EdgeInsets.all(14),
                                        child: Center(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "fff",
                                              style: TextStyle(
                                                  color: Color(0xFF3B8992),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(width: 15),
                                            SvgPicture.asset(
                                              "assets/icons/fileplus.svg",
                                              color: Color(0xff3B8992),
                                            )
                                          ],
                                        )),
                                      ))),
                              const SizedBox(height: 16),
                              Text(
                                "data",
                                style: kContentTextStyle,
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                  width: double.infinity,
                                  child: DottedBorder(
                                      dashPattern: [9, 9],
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(9),
                                      color: Color(0xFF3B8992),
                                      child: Padding(
                                        padding: const EdgeInsets.all(14),
                                        child: Center(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "fff",
                                              style: TextStyle(
                                                  color: Color(0xFF3B8992),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(width: 15),
                                            SvgPicture.asset(
                                              "assets/icons/fileplus.svg",
                                              color: Color(0xff3B8992),
                                            )
                                          ],
                                        )),
                                      ))),
                              const SizedBox(height: 16),
                              Text(
                                "data",
                                style: kContentTextStyle,
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                  width: double.infinity,
                                  child: DottedBorder(
                                      dashPattern: [9, 9],
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(9),
                                      color: Color(0xFF3B8992),
                                      child: Padding(
                                        padding: const EdgeInsets.all(14),
                                        child: Center(
                                            child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              "fff",
                                              style: TextStyle(
                                                  color: Color(0xFF3B8992),
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                            SizedBox(width: 15),
                                            SvgPicture.asset(
                                              "assets/icons/fileplus.svg",
                                              color: Color(0xff3B8992),
                                            )
                                          ],
                                        )),
                                      ))),
                              const SizedBox(height: 16),
                            ]))
                  ]),
              Padding(
                padding: const EdgeInsets.all(16),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "${AppLocalizations.of(context)?.savechanges}",
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {
                        showAlertDialog(context, id);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "${AppLocalizations.of(context)?.deleteapplication}",
                          style:
                              TextStyle(fontSize: 16, color: Color(0xffB03A35)),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ));
  }
}

showAlertDialog(BuildContext context, String id) {
  // set up the buttons
  Widget remindButton = TextButton(
    child: Text("${AppLocalizations.of(context)?.no}"),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  Widget cancelButton = TextButton(
    child: Text("${AppLocalizations.of(context)?.yes}"),
    onPressed: () {
      context.read<ClaimDeleteCubit>().deleteclaim(id);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    content: Text("${AppLocalizations.of(context)?.areyou}"),
    actions: [
      remindButton,
      cancelButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

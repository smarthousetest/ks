import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/cubit.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/src/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool trans = true;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBacColor,
        iconTheme: IconThemeData(color: kIconColor),
        elevation: 0,
        centerTitle: true,
        title: Text("${AppLocalizations.of(context)?.settings}",
            style: kAppBarTextStyle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${AppLocalizations.of(context)?.pushnotifications}",
                  style: kContentTextStyle,
                ),
                Switch(
                    activeColor: kButtonColor,
                    value: trans,
                    onChanged: (bool value) {
                      print("ffff");
                    })
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${AppLocalizations.of(context)?.nllanguage}",
                  style: kContentTextStyle,
                ),
              ],
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                context.read<LangCubit>().setLocale(Locale("ru"));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Русский",
                    style: kContentTextStyle,
                  ),
                  Visibility(
                      child: SvgPicture.asset("assets/icons/langcheck.svg"),
                      visible: AppLocalizations.of(context)?.localeName == "ru"
                          ? true
                          : false)
                ],
              ),
            ),
            SizedBox(height: 7),
            Divider(
              height: 5,
              color: Colors.black,
            ),
            SizedBox(height: 7),
            GestureDetector(
              onTap: () {
                context.read<LangCubit>().setLocale(Locale("en"));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "English",
                    style: kContentTextStyle,
                  ),
                  Visibility(
                      child: SvgPicture.asset("assets/icons/langcheck.svg"),
                      visible: AppLocalizations.of(context)?.localeName == "en"
                          ? true
                          : false)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/auth/auth_cubit.dart';
import 'package:kazansummit/cubit/auth/auth_state.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/auth_widget.dart';
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
                    "??????????????",
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
            SizedBox(height: 40),
            BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
              if (state is LoginedState) {
                return SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFB03A35),
                      ),
                      onPressed: () {
                        context.read<AuthCubit>().logOut();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          "${AppLocalizations.of(context)?.logout}",
                          style: TextStyle(fontSize: 16),
                        ),
                      )),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AuthWidget(),
                  ],
                );
              }
            })
          ],
        ),
      ),
    );
  }
}

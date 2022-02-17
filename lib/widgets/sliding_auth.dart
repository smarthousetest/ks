import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/auth/auth_cubit.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/cubit/all/state.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

final PanelController panelController2 = PanelController();

class SlidingAuth extends StatefulWidget {
  @override
  State<SlidingAuth> createState() => _SlidingAuthState();
}

class _SlidingAuthState extends State<SlidingAuth> {
  @override
  Widget build(BuildContext context) {
    context.read<SlidingAutgCubit>().stream.listen((state) {
      if (state is SlidingAuthOpenState) {
        panelController2.open();
      } else if (state is SlidingAuthClosedState) {
        panelController2.close();
      }
    });

    return SlidingUpPanel(
      color: Color(0xff2E8B90),
      maxHeight: MediaQuery.of(context).size.height * 0.4,
      minHeight: 0,
      controller: panelController2,
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      panel: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(4)),
                  color: Colors.grey,
                ),
                margin: const EdgeInsets.only(top: 8, bottom: 18),
                width: 118,
                height: 4,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFFFFFF),
                          ),
                          onPressed: () {
                            context.read<AuthCubit>().signIn();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              "${AppLocalizations.of(context)?.login}",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF3B8992)),
                            ),
                          )),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFFFFFFF),
                          ),
                          onPressed: () {
                            context.read<AuthCubit>().logOut();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              "Выход",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF3B8992)),
                            ),
                          )),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

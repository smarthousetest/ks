import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/cubit/all/state.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:kazansummit/widgets/dropdown_input.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

final PanelController panelController2 = PanelController();

class SlidingFilterB2b extends StatefulWidget {
  @override
  State<SlidingFilterB2b> createState() => _SlidingFilterB2bState();
}

class _SlidingFilterB2bState extends State<SlidingFilterB2b> {
  @override
  Widget build(BuildContext context) {
    context.read<FilterB2bCubit>().stream.listen((state) {
      if (state is FilterB2bOpenState) {
        print("objectdd");
        panelController2.open();
      } else if (state is FilterB2bClosedState) {
        panelController2.close();
      }
    });

    bool trans = false;
    return SlidingUpPanel(
      maxHeight: MediaQuery.of(context).size.height * 0.8,
      minHeight: 0,
      controller: panelController2,
      backdropEnabled: true,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
      panel: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {
                    FilterB2bCubit filterCubit = context.read<FilterB2bCubit>();
                    filterCubit.hide();
                  },
                  icon: SvgPicture.asset("assets/icons/X.svg",
                      color: Color(0xFF828282))),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${AppLocalizations.of(context)?.filter}",
                        style: kAppBarTextStyle)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    SizedBox(height: 25),
                    DropdownInput(
                        text: "TEZT",
                        list: ["1", "2", "3"],
                        selectedvalue: "1"),
                    SizedBox(height: 25),
                    DropdownInput(
                        text: "TEZT",
                        list: ["1", "2", "3"],
                        selectedvalue: "1"),
                    SizedBox(height: 25),
                    DropdownInput(
                        text: "TEZT",
                        list: ["1", "2", "3"],
                        selectedvalue: "1"),
                    SizedBox(height: 25),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Text(
                                "${AppLocalizations.of(context)?.show}",
                                style: TextStyle(fontSize: 16),
                              ),
                            )),
                      ),
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

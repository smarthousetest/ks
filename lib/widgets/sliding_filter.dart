import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/cubit.dart';
import 'package:kazansummit/cubit/state.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

final PanelController panelController = PanelController();

class SlidingFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    context.read<FilterCubit>().stream.listen((state) {
      if (state is FilterOpenState) {
        panelController.open();
      } else if (state is FilterClosedState) {
        panelController.close();
      }
    });

    bool trans = false;
    return SlidingUpPanel(
      maxHeight: MediaQuery.of(context).size.height * 0.8,
      minHeight: 0,
      controller: panelController,
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
                    FilterCubit filterCubit = context.read<FilterCubit>();
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
                  children: [Text("Фильтры", style: kAppBarTextStyle)],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Трансляция",
                          style: kFilterTextStyle,
                        ),
                        Switch(
                            activeColor: kButtonColor,
                            value: trans,
                            onChanged: (bool value) {
                              print("ffff");
                            })
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Отрасль события",
                          style: kFilterTextStyle,
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Формат встречи",
                          style: kFilterTextStyle,
                        )
                      ],
                    ),
                    SizedBox(height: 25),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Text(
                              "Показать",
                              style: TextStyle(fontSize: 16),
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

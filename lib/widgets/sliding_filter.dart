import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/cubit/all/state.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

final PanelController panelController = PanelController();

class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}

List<Animal> _animals = [
  Animal(id: 1, name: "Lion"),
  Animal(id: 2, name: "Flamingo"),
  Animal(id: 3, name: "Hippo"),
  Animal(id: 4, name: "Horse"),
  Animal(id: 5, name: "Tiger"),
  Animal(id: 6, name: "Penguin"),
  Animal(id: 7, name: "Spider"),
  Animal(id: 8, name: "Snake"),
  Animal(id: 9, name: "Bear")
];

var _items = _animals
    .map((animal) => MultiSelectItem<Animal>(animal, animal.name))
    .toList();

List<dynamic>? selectedAnimals = [];

class SlidingFilter extends StatefulWidget {
  @override
  State<SlidingFilter> createState() => _SlidingFilterState();
}

class _SlidingFilterState extends State<SlidingFilter> {
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${AppLocalizations.of(context)?.livestream}",
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
                          "${AppLocalizations.of(context)?.topics}",
                          style: kFilterTextStyle,
                        )
                      ],
                    ),
                    MultiSelectChipField<Animal?>(
                      items: _items,
                      scroll: false,
                      showHeader: false,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(0)),
                        border: Border.all(
                          color: kBacColor,
                          width: 0,
                        ),
                      ),
                      chipShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9))),
                      chipColor: Color(0xFFEFEFEF),
                      textStyle: TextStyle(
                          color: Color(0xFF828282),
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      selectedTextStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 14),
                      selectedChipColor: kTextGreenColor,
                      onTap: (values) {
                        setState(() {
                          selectedAnimals = values;
                        });
                      },
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "${AppLocalizations.of(context)?.formats}",
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
                              "${AppLocalizations.of(context)?.show}",
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

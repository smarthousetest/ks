import 'dart:convert';

import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/cubit/all/state.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/green_line.dart';

class ClaimPage extends StatelessWidget {
  const ClaimPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    RouteSettings settings = ModalRoute.of(context)!.settings;

    String id = settings.arguments as String;

    context.read<ClaimPageCubit>().fetchClaimPage(id);

    return Scaffold(
        appBar: AppBar(
          backgroundColor: kBacColor,
          iconTheme: IconThemeData(color: kIconColor),
          elevation: 0,
          centerTitle: true,
          title: Text("${AppLocalizations.of(context)?.services}",
              style: kAppBarTextStyle),
          actions: [
            IconButton(
                iconSize: 40,
                onPressed: () {
                  Navigator.pushNamed(context, '/claimeditpage', arguments: id);
                },
                icon: SvgPicture.asset("assets/icons/editp.svg")),
            IconButton(
                iconSize: 40,
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/notification.svg"))
          ],
        ),
        body: BlocBuilder<ClaimPageCubit, ClaimPageState>(
            builder: (context, state) {
          print(state);
          if (state is ClaimPageLoadingState) {
            return Center(child: CircularProgressIndicator());
          }
          if (state is ClaimPageLoadedState) {
            return Column(
              children: [
                Text("${state.loadedClaimPage.id}"),
                Text("${state.loadedClaimPage.values["headOfficeCountry"]}")
              ],
            );
          }
          return Text("Error $id");
        })

        //  SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       const SizedBox(height: 6),
        //       const Center(
        //         child: Text("KazanSummit2022",
        //             style: TextStyle(
        //                 color: Color(0xFF3B8992),
        //                 fontWeight: FontWeight.w700,
        //                 fontSize: MediumTextSize)),
        //       ),
        //       const SizedBox(height: 16),
        //       GreenLine(text: "Личные данные"),
        //       const SizedBox(height: 16),
        //       CircularProfileAvatar(
        //           "https://trikky.ru/wp-content/blogs.dir/1/files/2019/01/24/koty-zhivotnye-665.jpg",
        //           radius: 52),
        //       const SizedBox(height: 16),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 16, right: 16),
        //         child: Column(children: [
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //         ]),
        //       ),
        //       GreenLine(text: "Личные данные"),
        //       const SizedBox(height: 16),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 16, right: 16),
        //         child: Column(children: [
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //         ]),
        //       ),
        //       const SizedBox(height: 16),
        //       GreenLine(text: "Контактная информация"),
        //       const SizedBox(height: 16),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 16, right: 16),
        //         child: Column(children: [
        //           Row(children: [
        //             SvgPicture.asset("assets/icons/phone.svg", color: kIconColor),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             SvgPicture.asset("assets/icons/mail.svg", color: kIconColor),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             SvgPicture.asset("assets/icons/link.svg", color: kIconColor),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //         ]),
        //       ),
        //       const SizedBox(height: 16),
        //       GreenLine(text: "Контактная информация"),
        //       const SizedBox(height: 16),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 16, right: 16),
        //         child: Column(children: [
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //         ]),
        //       ),
        //       const SizedBox(height: 16),
        //       GreenLine(text: "Контактная информация"),
        //       const SizedBox(height: 16),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 16, right: 16),
        //         child: Column(children: [
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //         ]),
        //       ),
        //       const SizedBox(height: 16),
        //       GreenLine(text: "Контактная информация"),
        //       const SizedBox(height: 16),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 16, right: 16),
        //         child: Column(children: [
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle,
        //             )
        //           ]),
        //         ]),
        //       ),
        //       const SizedBox(height: 16),
        //       GreenLine(text: "Контактная информация"),
        //       const SizedBox(height: 16),
        //       Padding(
        //         padding: const EdgeInsets.only(left: 16, right: 16),
        //         child: Column(children: [
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle.copyWith(
        //                   decoration: TextDecoration.underline),
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle.copyWith(
        //                   decoration: TextDecoration.underline),
        //             )
        //           ]),
        //           const SizedBox(height: 16),
        //           Row(children: [
        //             Text(
        //               "data",
        //               style: kzayavgreenTextStyle,
        //             ),
        //             const SizedBox(width: 5),
        //             Text(
        //               "data",
        //               style: kzayavblackTextStyle.copyWith(
        //                   decoration: TextDecoration.underline),
        //             )
        //           ]),
        //         ]),
        //       ),
        //       const SizedBox(height: 16),
        //     ],
        //   ),
        // ),
        );
  }
}

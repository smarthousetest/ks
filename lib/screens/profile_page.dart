import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kazansummit/cubit/all/state.dart';
import 'package:kazansummit/cubit/auth/auth_cubit.dart';
import 'package:kazansummit/cubit/auth/auth_state.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/widgets/auth_widget.dart';
import 'package:kazansummit/widgets/profile_card.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBacColor,
        iconTheme: IconThemeData(color: kIconColor),
        elevation: 0,
        centerTitle: true,
        title: Text("${AppLocalizations.of(context)?.myapplications}",
            style: kAppBarTextStyle),
        leading: IconButton(
            iconSize: 40,
            onPressed: () {},
            icon: SvgPicture.asset("assets/icons/search.svg")),
        actions: [
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/settings.svg")),
          IconButton(
              iconSize: 40,
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/notification.svg"))
        ],
      ),
      body: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
        if (state is LoginedState) {
          return BlocBuilder<ProfilePageCubit, ProfilePageState>(
              builder: (context, state) {
            if (state is ProfilePageLoadingState) {
              return Center(child: CircularProgressIndicator());
            }
            if (state is ProfilePageLoadedState) {
              return RefreshIndicator(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.loadedProfilePage.items?.length + 1,
                      itemBuilder: (context, index) {
                        if (index != state.loadedProfilePage.items?.length) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 24, right: 24),
                            child: Column(
                              children: [
                                SizedBox(height: 24),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(context, '/claimpage');
                                  },
                                  child: ProfileCard(
                                      status: state.loadedProfilePage
                                          .items[index].applicationStatus.code,
                                      statusname: state.loadedProfilePage
                                          .items[index].applicationStatus.value,
                                      title: state.loadedProfilePage
                                          .items[index].eventTitle,
                                      type: state.loadedProfilePage.items[index]
                                          .templateName,
                                      name: state.loadedProfilePage.items[index]
                                          .fullNameEn,
                                      prof:
                                          "${state.loadedProfilePage.items[index].jobTitle}, ${state.loadedProfilePage.items[index].organizationEn}",
                                      paket: state.loadedProfilePage
                                          .items[index].packageName,
                                      buttonvisible: true,
                                      buttonred: true),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return Padding(
                            padding: const EdgeInsets.all(24),
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/feedbackpage');
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(14.0),
                                    child: Text(
                                      "${AppLocalizations.of(context)?.feedback}",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  )),
                            ),
                          );
                        }
                      }),
                  onRefresh: context.read<ProfilePageCubit>().fetchProfilePage);

              // return Text("${state.loadedProfilePage.items[1].eventTitle}");

            }
            return Text("Error");
          });

          // SingleChildScrollView(
          //   child: Padding(
          //     padding: EdgeInsets.all(24),
          //     child: Column(
          //       children: [
          //         GestureDetector(
          //           onTap: () {
          //             Navigator.pushNamed(context, '/claimpage');
          //           },
          //           child: ProfileCard(
          //               status: "one",
          //               title: "KazanSummit2022",
          //               type: "Участник",
          //               name: "Terenteva Tatyana",
          //               prof: "web-developer, maksat.pro",
          //               paket: "Пакет «Стандарт»",
          //               buttonvisible: true,
          //               buttonred: true),
          //         ),
          //         SizedBox(height: 16),
          //         GestureDetector(
          //           onTap: () {
          //             SlidingAutgCubit authslCubit =
          //                 context.read<SlidingAutgCubit>();
          //             authslCubit.open();
          //           },
          //           child: ProfileCard(
          //               status: "two",
          //               title: "KazanSummit2022",
          //               type: "Участник",
          //               name: "Terenteva Tatyana",
          //               prof: "web-developer, maksat.pro",
          //               paket: "Пакет «Стандарт»",
          //               buttonvisible: true,
          //               buttonred: true),
          //         ),
          //         SizedBox(height: 16),
          //         ProfileCard(
          //             status: "three",
          //             title: "KazanSummit2022",
          //             type: "Участник",
          //             name: "Terenteva Tatyana",
          //             prof: "web-developer, maksat.pro",
          //             paket: "Пакет «Стандарт»",
          //             buttonvisible: true,
          //             buttonred: false),
          //         SizedBox(height: 16),
          //         ProfileCard(
          //             status: "three",
          //             title: "KazanSummit2022",
          //             type: "Участник",
          //             name: "Terenteva Tatyana",
          //             prof: "web-developer, maksat.pro",
          //             paket: "Пакет «Стандарт»",
          //             buttonvisible: true,
          //             buttonred: false),
          //         SizedBox(height: 16),
          //         ProfileCard(
          //             status: "two",
          //             title: "KazanSummit2022",
          //             type: "Участник",
          //             name: "Terenteva Tatyana",
          //             prof: "web-developer, maksat.pro",
          //             paket: "Пакет «Стандарт»",
          //             buttonvisible: false,
          //             buttonred: true),
          //         SizedBox(height: 16),
          //         ProfileCard(
          //             status: "one",
          //             title: "KazanSummit2022",
          //             type: "Участник",
          //             name: "Terenteva Tatyana",
          //             prof: "web-developer, maksat.pro",
          //             paket: "Пакет «Стандарт»",
          //             buttonvisible: false,
          //             buttonred: true),
          //         SizedBox(height: 16),
          //         ProfileCard(
          //             status: "two",
          //             title: "KazanSummit2022",
          //             type: "Участник",
          //             name: "Terenteva Tatyana",
          //             prof: "web-developer, maksat.pro",
          //             paket: "Пакет «Стандарт»",
          //             buttonvisible: true,
          //             buttonred: true),
          //         SizedBox(height: 16),
          //         SizedBox(
          //           width: double.infinity,
          //           child: ElevatedButton(
          //               onPressed: () {
          //                 Navigator.pushNamed(context, '/feedbackpage');
          //               },
          //               child: Padding(
          //                 padding: const EdgeInsets.all(14.0),
          //                 child: Text(
          //                   "${AppLocalizations.of(context)?.feedback}",
          //                   style: TextStyle(fontSize: 16),
          //                 ),
          //               )),
          //         ),
          //         SizedBox(height: 16),
          //       ],
          //     ),
          //   ),
          // );
        } else {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AuthWidget(),
              ],
            ),
          );
        }
      }),
    );
  }
}

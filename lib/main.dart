import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kazansummit/cubit/locator_services.dart';
import 'package:kazansummit/screens/%D1%81ontacts_page.dart';
import 'package:kazansummit/screens/main_page.dart';
import 'package:kazansummit/screens/management.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:kazansummit/cubit/cubit.dart';
import 'package:kazansummit/widgets/sliding_filter.dart';
import 'utils/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/cubit/locator_services.dart' as servic;

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: kPrimaryColor,
    statusBarIconBrightness: Brightness.light,
  ));
  await servic.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BottomNavigationControllerSelect>(
            create: (context) => sl<BottomNavigationControllerSelect>()),
        BlocProvider<FilterCubit>(create: (context) => sl<FilterCubit>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'KS',
        theme: theme(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(
          body: Stack(
            children: [Management(), SlidingFilter()],
          ),
        ),
        routes: <String, WidgetBuilder>{
          '/contactpage': (BuildContext context) => ContactsPage(),
        },
      ),
    );
  }
}

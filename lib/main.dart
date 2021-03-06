import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kazansummit/cubit/all/model.dart';
import 'package:kazansummit/cubit/auth/auth_cubit.dart';
import 'package:kazansummit/cubit/auth/auth_state.dart';
import 'package:kazansummit/cubit/locator_services.dart';
import 'package:kazansummit/other/drops.dart';
import 'package:kazansummit/screens/%D1%81ontacts_page.dart';
import 'package:kazansummit/screens/b2b_page.dart';
import 'package:kazansummit/screens/b2b_page_open.dart';
import 'package:kazansummit/screens/claim_edit_page.dart';
import 'package:kazansummit/screens/claim_page.dart';
import 'package:kazansummit/screens/event_page.dart';
import 'package:kazansummit/screens/event_page_put.dart';
import 'package:kazansummit/screens/feedback_page.dart';
import 'package:kazansummit/screens/main_page.dart';
import 'package:kazansummit/screens/management.dart';
import 'package:kazansummit/screens/news_page.dart';
import 'package:kazansummit/screens/notification_page.dart';
import 'package:kazansummit/screens/notification_page_open.dart';
import 'package:kazansummit/screens/partners_page.dart';
import 'package:kazansummit/screens/profile_page.dart';
import 'package:kazansummit/screens/settings_page.dart';
import 'package:kazansummit/screens/speaker_page.dart';
import 'package:kazansummit/screens/speaker_page_open.dart';
import 'package:kazansummit/screens/transport_page.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/widgets/sliding_auth.dart';
import 'package:kazansummit/widgets/sliding_filter.dart';
import 'package:kazansummit/widgets/sliding_filterb2b.dart';
import 'utils/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:kazansummit/cubit/locator_services.dart' as servic;

Drops drops = Drops({"null": Citizenship(id: "null", display: "null")});
void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: kPrimaryColor,
    statusBarIconBrightness: Brightness.light,
  ));
  WidgetsFlutterBinding.ensureInitialized();
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
          BlocProvider<FilterB2bCubit>(
              create: (context) => sl<FilterB2bCubit>()),
          BlocProvider<LangCubit>(
              create: (context) => sl<LangCubit>()..getlocale()),
          BlocProvider<SlidingAutgCubit>(
              create: (context) => sl<SlidingAutgCubit>()),
          BlocProvider<AuthCubit>(
              create: (context) => sl<AuthCubit>()..check()),
          BlocProvider<ProfilePageCubit>(
              create: (context) => sl<ProfilePageCubit>()..fetchProfilePage()),
          BlocProvider<ClaimPageCubit>(
              create: (context) => sl<ClaimPageCubit>()),
          BlocProvider<ClaimDeleteCubit>(
              create: (context) => sl<ClaimDeleteCubit>()),
          BlocProvider<ClaimUpdateCubit>(
              create: (context) => sl<ClaimUpdateCubit>()),
        ],
        child: BlocBuilder<LangCubit, Locale>(
          builder: (context, locale) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'KS',
            theme: theme(),
            locale: locale,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: BlocBuilder<AuthCubit, AuthState>(
                builder: (context, startstate) => Scaffold(
                      body: Stack(
                        children: [
                          Management(),
                          SlidingFilter(),
                          SlidingAuth()
                        ],
                      ),
                    )),
            routes: <String, WidgetBuilder>{
              '/contactpage': (BuildContext context) => ContactsPage(),
              '/eventpage': (BuildContext context) => EventPage(),
              '/speakerpage': (BuildContext context) => SpeakerPage(),
              '/newspage': (BuildContext context) => NewsPage(),
              '/notificationpage': (BuildContext context) => NotificationPage(),
              '/notificationpageopen': (BuildContext context) =>
                  NotificationPageOpen(),
              '/speakerpageopen': (BuildContext context) => SpeakerPageOpen(),
              '/partnerspage': (BuildContext context) => PartnersPage(),
              '/transportpage': (BuildContext context) => TransportPage(),
              '/feedbackpage': (BuildContext context) => FeedbackPage(),
              '/settingsPage': (BuildContext context) => SettingsPage(),
              '/claimpage': (BuildContext context) => ClaimPage(),
              '/claimeditpage': (BuildContext context) => ClaimEditPage(),
              '/evantputpage': (BuildContext context) => EventPagePut(),
              '/main': (BuildContext context) => Management(),
              '/b2b': (BuildContext context) => B2bPage(),
              '/b2bopen': (BuildContext context) => B2bPageOpen(),
            },
          ),
        ));
  }
}

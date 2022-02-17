import 'dart:convert';
import 'package:intl/locale.dart';
import 'package:kazansummit/cubit/all/cubit.dart';
import 'package:kazansummit/cubit/all/model.dart';
import 'package:kazansummit/cubit/auth/app_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProfilePageApi {
  Future<ProfilePageModel> getProfilePage() async {
    Map<String, String> headers = {"content-type": "application/json"};

    if (AppAuth.accessToken != null && AppAuth.accessToken!.isNotEmpty) {
      headers.addAll({'Authorization': 'Bearer ${AppAuth.accessToken}'});
    }

    dynamic locale = await sharedPreferences.getString("locale");
    String localeName = locale;
    print("localeName $localeName");
    Map<String, String> body = {"langName": localeName.toUpperCase()};

    final response = await http.post(
        Uri.parse(
            "https://service-ks.maksatlabs.ru/api/Statements/userStatements/"),
        headers: headers,
        body: jsonEncode(body));

    print("podborka = ${response.body}");

    if (response.statusCode == 200) {
      final dynamic cardJson = json.decode(response.body);

      print("cardJson $cardJson");

      return ProfilePageModel.fromJson(cardJson);
    } else {
      throw Exception('Error fetching');
    }
  }
}

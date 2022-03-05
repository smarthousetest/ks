import 'dart:convert';
import 'package:flutter/src/widgets/editable_text.dart';
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

    print("accessToken ${AppAuth.accessToken}");

    dynamic locale = await sharedPreferences.getString("locale");
    String localeName = locale;
    Map<String, String> body = {"langName": localeName.toUpperCase()};
    body.addAll({"page": "1"});
    body.addAll({"pageSize": "999999999"});

    final response = await http.post(
        Uri.parse("https://service-ks.maksatlabs.ru/api/Statements/"),
        headers: headers,
        body: jsonEncode(body));

    print("statusCode = ${response.statusCode}");

    print("podborka = ${response.body}");

    if (response.statusCode == 200) {
      final dynamic cardJson = json.decode(response.body);
      print(cardJson);
      return ProfilePageModel.fromJson(cardJson);
    } else {
      throw Exception('Error fetching');
    }
  }
}

class ClaimPageApi {
  Future<ClaimPageModel> getClaimPage(String id) async {
    Map<String, String> headers = {"content-type": "application/json"};

    if (AppAuth.accessToken != null && AppAuth.accessToken!.isNotEmpty) {
      headers.addAll({'Authorization': 'Bearer ${AppAuth.accessToken}'});
    }

    dynamic locale = await sharedPreferences.getString("locale");
    String localeName = locale;
    Map<String, String> body = {"langName": localeName.toUpperCase()};

    body.addAll({"id": id});

    final response = await http.post(
        Uri.parse("https://service-ks.maksatlabs.ru/api/Statements/Values"),
        headers: headers,
        body: jsonEncode(body));

    print("podborka = ${response.body}");

    if (response.statusCode == 200) {
      final dynamic cardJson = json.decode(response.body);
      return ClaimPageModel.fromJson(cardJson);
    } else {
      throw Exception('Error fetching');
    }
  }
}

class DeleteClaimApi {
  Future<String> delete(String id) async {
    Map<String, String> headers = {"content-type": "application/json"};

    if (AppAuth.accessToken != null && AppAuth.accessToken!.isNotEmpty) {
      headers.addAll({'Authorization': 'Bearer ${AppAuth.accessToken}'});
    }

    Map<String, String> body = {"statementId": id};

    final response = await http.post(
        Uri.parse("https://service-ks.maksatlabs.ru/api/Statements/Delete"),
        headers: headers,
        body: jsonEncode(body));

    print("podborka = ${response.body}");

    if (response.statusCode == 200) {
      print("fffff");
      var kk = jsonDecode(response.body);
      print(kk["statusCode"]);
      return kk["statusCode"];
    } else {
      throw Exception('error delete');
    }
  }
}

class UpdateClaimApi {
  Future<String> update(
      String statementId,
      String templateId,
      Map<String, Citizenship> selecteddrops,
      Map<String, bool> selectedcheck,
      Map<String, String> selectedradio,
      Map<String, TextEditingController> textEditingControllers) async {
    Map<String, String> headers = {"content-type": "application/json"};
    if (AppAuth.accessToken != null && AppAuth.accessToken!.isNotEmpty) {
      headers.addAll({'Authorization': 'Bearer ${AppAuth.accessToken}'});
    }

    dynamic locale = await sharedPreferences.getString("locale");
    String localeName = locale;

    Map<String, String> body = {"languageCode": localeName.toUpperCase()};
    body.addAll({"statementId": statementId});
    body.addAll({"templateId": templateId});
    var response;

    if (textEditingControllers != null) {
      print("update");
      for (var item in textEditingControllers.entries) {
        body.addAll({"templateParameterCode": item.key});
        body.addAll({"value": item.value.text});
        response = await http.post(
            Uri.parse("https://service-ks.maksatlabs.ru/api/Statements/Edit"),
            headers: headers,
            body: jsonEncode(body));
      }
    }

    if (selectedradio != null) {
      print("update");
      for (var item in selectedradio.entries) {
        body.addAll({"templateParameterCode": item.key});
        body.addAll({"value": item.value});
        response = await http.post(
            Uri.parse("https://service-ks.maksatlabs.ru/api/Statements/Edit"),
            headers: headers,
            body: jsonEncode(body));
      }
    }

    if (selectedcheck != null) {
      print("update");
      for (var item in selectedcheck.entries) {
        body.addAll({"templateParameterCode": item.key});
        body.addAll({"value": item.value.toString()});
        response = await http.post(
            Uri.parse("https://service-ks.maksatlabs.ru/api/Statements/Edit"),
            headers: headers,
            body: jsonEncode(body));
      }
    }

    if (selecteddrops != null) {
      print("update");
      for (var item in selecteddrops.entries) {
        body.addAll({"templateParameterCode": item.key});
        body.addAll({"value": item.value.id!});

        print("${item.key}");
        print("${item.value.id!}");

        response = await http.post(
            Uri.parse("https://service-ks.maksatlabs.ru/api/Statements/Edit"),
            headers: headers,
            body: jsonEncode(body));
        print("body ${body}");
        print("response.body ${response.body}");
      }
    }

    if (response.statusCode == 200) {
      return "ok";
    } else {
      throw Exception('error update');
    }
  }
}

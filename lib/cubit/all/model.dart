// To parse this JSON data, do
//
//     final profilePageModel = profilePageModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

ProfilePageModel profilePageModelFromJson(String str) =>
    ProfilePageModel.fromJson(json.decode(str));

String profilePageModelToJson(ProfilePageModel data) =>
    json.encode(data.toJson());

class ProfilePageModel {
  ProfilePageModel({
    required this.items,
  });

  List<Item?>? items;

  factory ProfilePageModel.fromJson(Map<String, dynamic> json) =>
      ProfilePageModel(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items!.map((x) => x!.toJson())),
      };
}

class Item {
  Item({
    required this.id,
    required this.informationAboutPerson,
    required this.eventTitle,
    required this.templateName,
    required this.packageName,
    required this.applicationStatus,
  });

  String id;
  String informationAboutPerson;
  String eventTitle;
  String templateName;
  String packageName;
  ApplicationStatus applicationStatus;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        informationAboutPerson: json["informationAboutPerson"],
        eventTitle: json["eventTitle"],
        templateName: json["templateName"],
        packageName: json["packageName"],
        applicationStatus:
            ApplicationStatus.fromJson(json["applicationStatus"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "informationAboutPerson": informationAboutPerson,
        "eventTitle": eventTitle,
        "templateName": templateName,
        "packageName": packageName,
        "applicationStatus": applicationStatus.toJson(),
      };
}

class ApplicationStatus {
  ApplicationStatus({
    required this.value,
    required this.code,
  });

  String value;
  String code;

  factory ApplicationStatus.fromJson(Map<String, dynamic> json) =>
      ApplicationStatus(
        value: json["value"],
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "code": code,
      };
}

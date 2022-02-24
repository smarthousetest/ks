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

  List<Item> items;

  factory ProfilePageModel.fromJson(Map<String, dynamic> json) =>
      ProfilePageModel(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.id,
    required this.informationAboutPerson,
    required this.fullNameEn,
    required this.organizationEn,
    required this.jobTitle,
    required this.eventTitle,
    required this.templateName,
    required this.packageName,
    required this.applicationStatus,
    required this.date,
  });

  String? id;
  String? informationAboutPerson;
  String? fullNameEn;
  String? organizationEn;
  String? jobTitle;
  String? eventTitle;
  String? templateName;
  String? packageName;
  ApplicationStatus applicationStatus;
  DateTime date;

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json["id"],
      informationAboutPerson: json["informationAboutPerson"] ?? "",
      fullNameEn: json["fullNameEN"] ?? "",
      organizationEn: json["organizationEN"] ?? "",
      jobTitle: json["jobTitle"] ?? "",
      eventTitle: json["eventTitle"] ?? "",
      templateName: json["templateName"] ?? "",
      packageName: json["packageName"] ?? "",
      applicationStatus: ApplicationStatus.fromJson(json["applicationStatus"]),
      date: DateTime.parse(json["date"]),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "informationAboutPerson": informationAboutPerson,
        "fullNameEN": fullNameEn,
        "organizationEN": organizationEn,
        "jobTitle": jobTitle,
        "eventTitle": eventTitle,
        "templateName": templateName,
        "packageName": packageName,
        "applicationStatus": applicationStatus.toJson(),
        "date": date.toIso8601String(),
      };
}

class ApplicationStatus {
  ApplicationStatus({
    required this.value,
    required this.code,
  });

  String? value;
  String? code;

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

///////////////////////////////////////////////CC

ClaimPageModel claimPageModelFromJson(String str) =>
    ClaimPageModel.fromJson(json.decode(str));

// String claimPageModelToJson(ClaimPageModel data) => json.encode(data.toJson());

class ClaimPageModel {
  ClaimPageModel({
    this.id,
    this.templateId,
    this.groups,
    this.fields,
    this.values,
  });

  String? id;
  String? templateId;
  List<Group>? groups;
  List<Field>? fields;
  Map<dynamic, dynamic>? values;

  factory ClaimPageModel.fromJson(Map<String, dynamic> json) {
    return ClaimPageModel(
        id: json["id"] == null ? null : json["id"],
        templateId: json["templateId"] == null ? null : json["templateId"],
        groups: json["groups"] == null
            ? null
            : List<Group>.from(json["groups"].map((x) => Group.fromJson(x))),
        fields: json["fields"] == null
            ? null
            : List<Field>.from(json["fields"].map((x) => Field.fromJson(x))),
        values: json["values"]);
  }
}

class Field {
  Field({
    this.type,
    this.items,
    this.display,
    this.code,
    this.disabled,
  });

  String? type;
  List<Citizenship?>? items;
  String? display;
  String? code;
  bool? disabled;

  factory Field.fromJson(Map<String, dynamic> json) => Field(
        type: json["type"] == null ? null : json["type"],
        items: json["items"] == null
            ? null
            : List<Citizenship>.from(
                json["items"].map((x) => Citizenship.fromJson(x))),
        display: json["display"] == null ? null : json["display"],
        code: json["code"] == null ? null : json["code"],
        disabled: json["disabled"] == null ? null : json["disabled"],
      );

  Map<String, dynamic> toJson() => {
        "type": type == null ? null : type,
        "items": items == null
            ? null
            : List<dynamic>.from(items!.map((x) => x?.toJson())),
        "display": display == null ? null : display,
        "code": code == null ? null : code,
        "disabled": disabled == null ? null : disabled,
      };
}

class Citizenship {
  Citizenship({
    this.id,
    this.display,
  });

  String? id;
  String? display;

  factory Citizenship.fromJson(Map<String, dynamic> json) => Citizenship(
        id: json["id"] == null ? null : json["id"],
        display: json["display"] == null ? null : json["display"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "display": display == null ? null : display,
      };
}

class Group {
  Group({
    this.display,
    this.fields,
  });

  String? display;
  List<String>? fields;

  factory Group.fromJson(Map<String, dynamic> json) => Group(
        display: json["display"] == null ? null : json["display"],
        fields: json["fields"] == null
            ? null
            : List<String>.from(json["fields"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "display": display == null ? null : display,
        "fields":
            fields == null ? null : List<dynamic>.from(fields!.map((x) => x)),
      };
}

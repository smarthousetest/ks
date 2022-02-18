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

  String id;
  String informationAboutPerson;
  String fullNameEn;
  String organizationEn;
  String jobTitle;
  String eventTitle;
  String templateName;
  String packageName;
  ApplicationStatus applicationStatus;
  DateTime date;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        informationAboutPerson: json["informationAboutPerson"],
        fullNameEn: json["fullNameEN"],
        organizationEn: json["organizationEN"],
        jobTitle: json["jobTitle"],
        eventTitle: json["eventTitle"],
        templateName: json["templateName"],
        packageName: json["packageName"],
        applicationStatus:
            ApplicationStatus.fromJson(json["applicationStatus"]),
        date: DateTime.parse(json["date"]),
      );

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

///////////////////////////////////////////////CC

ClaimPageModel claimPageModelFromJson(String str) =>
    ClaimPageModel.fromJson(json.decode(str));

String claimPageModelToJson(ClaimPageModel data) => json.encode(data.toJson());

class ClaimPageModel {
  ClaimPageModel({
    required this.templateId,
    required this.templateParameters,
  });

  String templateId;
  List<TemplateParameter> templateParameters;

  factory ClaimPageModel.fromJson(Map<String, dynamic> json) {
    return ClaimPageModel(
      templateId: json["templateId"],
      templateParameters: List<TemplateParameter>.from(
          json["templateParameters"].map((x) => TemplateParameter.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "templateId": templateId,
        "templateParameters":
            List<dynamic>.from(templateParameters.map((x) => x.toJson())),
      };
}

class TemplateParameter {
  TemplateParameter({
    this.code,
    this.value,
  });

  String? code;
  String? value;

  factory TemplateParameter.fromJson(Map<String, dynamic> json) =>
      TemplateParameter(
        code: json["code"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "value": value == null ? null : value,
      };
}

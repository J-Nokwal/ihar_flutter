// To parse this JSON data, do
//
//     final userModals = userModalsFromJson(jsonString);

import 'dart:convert';

List<UserModals> usersAllModelFromJson(String str) =>
    List<UserModals>.from(json.decode(str).map((x) => UserModals.fromJson(x)));

String usersAllModalToJson(List<UserModals> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

UserModals userModalsFromJson(String str) => UserModals.fromJson(json.decode(str));

String userModalsToJson(UserModals data) => json.encode(data.toJson());

class UserModals {
  UserModals({
    required this.userId,
    required this.isAnaoymous,
    this.email,
    this.profileLink,
    this.profilePhotoLink,
    this.firstName,
    this.lastName,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  String userId;
  bool? isAnaoymous;
  String? email;
  String? profileLink;
  String? profilePhotoLink;
  String? firstName;
  String? lastName;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;

  factory UserModals.fromJson(Map<String, dynamic> json) => UserModals(
        userId: json["userId"],
        isAnaoymous: json["is_anaoymous"],
        email: json["email"],
        profileLink: json["ProfileLink"],
        profilePhotoLink: json["ProfilePhotoLink"],
        firstName: json["FirstName"],
        lastName: json["LastName"],
        createdAt: json["CreatedAt"] == null ? null : DateTime.parse(json["CreatedAt"]),
        updatedAt: json["UpdatedAt"] == null ? null : DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"] == null ? null : DateTime.parse(json["DeletedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "is_anaoymous": isAnaoymous,
        "email": email,
        "ProfileLink": profileLink,
        "ProfilePhotoLink": profilePhotoLink,
        "FirstName": firstName,
        "LastName": lastName,
        "CreatedAt": createdAt?.toIso8601String(),
        "UpdatedAt": updatedAt?.toIso8601String(),
        "DeletedAt": deletedAt?.toIso8601String(),
      };
}

// To parse this JSON data, do
//
//     final postModals = postModalsFromJson(jsonString);

import 'dart:convert';

import 'package:ihar_flutter/core/modals/userModal.dart';

PostModals postModalsFromJson(String str) => PostModals.fromJson(json.decode(str));

String postModalsToJson(PostModals data) => json.encode(data.toJson());

class PostModals {
  PostModals({
    required this.userId,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.message,
    this.postPhotoLink,
    this.likes,
    this.liked = false,
    this.postFrom,
  });

  int? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;
  String? message;
  String? postPhotoLink;
  int? likes;
  String userId;
  bool liked;
  UserModals? postFrom;

  factory PostModals.fromJson(Map<String, dynamic> json) => PostModals(
      id: json["ID"],
      userId: json["userId"],
      message: json["message"],
      postPhotoLink: json["post_photo_link"],
      likes: json["likes"],
      liked: json["liked"],
      updatedAt: json["UpdatedAt"] == null ? null : DateTime.parse(json["UpdatedAt"]),
      createdAt: json["CreatedAt"] == null ? null : DateTime.parse(json["CreatedAt"]),
      deletedAt: json["DeletedAt"] == null ? null : DateTime.parse(json["DeletedAt"]),
      postFrom: json["postFrom"] == null ? null : UserModals.fromJson(json["postFrom"]));

  Map<String, dynamic> toJson() => {
        "ID": id,
        "userId": userId,
        "message": message,
        "post_photo_link": postPhotoLink,
        "likes": likes,
        "liked": liked,
        "CreatedAt": createdAt?.toIso8601String(),
        "UpdatedAt": updatedAt?.toIso8601String(),
        "DeletedAt": deletedAt?.toIso8601String(),
        "postFrom": null
      };
}

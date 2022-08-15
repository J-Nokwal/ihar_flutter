// To parse this JSON data, do
//
//     final commentsAllModal = commentsAllModalFromJson(jsonString);

import 'dart:convert';

import 'package:ihar_flutter/core/modals/userModal.dart';

List<CommentModal> commentsAllModalFromJson(String str) =>
    List<CommentModal>.from(json.decode(str).map((x) => CommentModal.fromJson(x)));

String commentsAllModalToJson(List<CommentModal> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

CommentModal commentModalFromJson(String str) => CommentModal.fromJson(json.decode(str));
String commentModalToJson(CommentModal data) => json.encode(data.toJson());

class CommentModal {
  CommentModal({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.commentFrom,
    required this.message,
    required this.postId,
    required this.userId,
  });

  int? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;
  String message;
  int postId;
  UserModals? commentFrom;
  String userId;

  factory CommentModal.fromJson(Map<String, dynamic> json) => CommentModal(
        id: json["ID"],
        createdAt: json["CreatedAt"] == null ? null : DateTime.parse(json["CreatedAt"]),
        updatedAt: json["UpdatedAt"] == null ? null : DateTime.parse(json["UpdatedAt"]),
        deletedAt: json["DeletedAt"] == null ? null : DateTime.parse(json["DeletedAt"]),
        message: json["message"],
        postId: json["postId"],
        commentFrom: json["commentFrom"] == null ? null : UserModals.fromJson(json["commentFrom"]),
        userId: json["userId"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "CreatedAt": createdAt?.toIso8601String(),
        "UpdatedAt": updatedAt?.toIso8601String(),
        "DeletedAt": deletedAt?.toIso8601String(),
        "message": message,
        "postId": postId,
        "commentFrom": commentFrom?.toJson(),
        "userId": userId,
      };
}

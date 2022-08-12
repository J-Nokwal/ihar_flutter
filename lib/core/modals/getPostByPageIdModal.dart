// To parse this JSON data, do
//
//     final getPostByPageIdModal = getPostByPageIdModalFromJson(jsonString);

import 'dart:convert';

import 'package:ihar_flutter/core/modals/postModal.dart';

GetPostByPageIdModal getPostByPageIdModalFromJson(String str) => GetPostByPageIdModal.fromJson(json.decode(str));

String getPostByPageIdModalToJson(GetPostByPageIdModal data) => json.encode(data.toJson());

class GetPostByPageIdModal {
  GetPostByPageIdModal({
    required this.noOfPages,
    required this.posts,
    required this.queryTime,
  });

  int noOfPages;
  List<PostModals> posts;
  String queryTime;

  factory GetPostByPageIdModal.fromJson(Map<String, dynamic> json) => GetPostByPageIdModal(
        noOfPages: json["noOfPages"],
        posts: List<PostModals>.from(json["posts"].map((x) => PostModals.fromJson(x))),
        queryTime: json["queryTime"],
      );

  Map<String, dynamic> toJson() => {
        "noOfPages": noOfPages,
        "posts": List<PostModals>.from(posts.map((x) => x.toJson())),
        "queryTime": queryTime,
      };
}

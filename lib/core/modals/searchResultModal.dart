// To parse this JSON data, do
//
//     final searchResultModal = searchResultModalFromJson(jsonString);

import 'dart:convert';

import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';

SearchResultModal searchResultModalFromJson(String str) => SearchResultModal.fromJson(json.decode(str));

String searchResultModalToJson(SearchResultModal data) => json.encode(data.toJson());

class SearchResultModal {
  SearchResultModal({
    required this.posts,
    required this.users,
  });

  List<PostModals> posts;
  List<UserModals> users;

  factory SearchResultModal.fromJson(Map<String, dynamic> json) => SearchResultModal(
        posts: List<PostModals>.from(json["posts"].map((x) => PostModals.fromJson(x))),
        users: List<UserModals>.from(json["users"].map((x) => UserModals.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
      };
}

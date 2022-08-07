// To parse this JSON data, do
//
//     final likedModal = likedModalFromJson(jsonString);

import 'dart:convert';

LikedModal likedModalFromJson(String str) => LikedModal.fromJson(json.decode(str));

String likedModalToJson(LikedModal data) => json.encode(data.toJson());

class LikedModal {
  LikedModal({
    required this.liked,
  });

  bool liked;

  factory LikedModal.fromJson(Map<String, dynamic> json) => LikedModal(
        liked: json["liked"],
      );

  Map<String, dynamic> toJson() => {
        "liked": liked,
      };
}

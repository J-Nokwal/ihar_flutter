// To parse this JSON data, do
//
//     final likePostModal = likePostModalFromJson(jsonString);

import 'dart:convert';

LikePostModal likePostModalFromJson(String str) => LikePostModal.fromJson(json.decode(str));

String likePostModalToJson(LikePostModal data) => json.encode(data.toJson());

class LikePostModal {
  LikePostModal({
    required this.likedBy,
    required this.postId,
  });

  String likedBy;
  int postId;

  factory LikePostModal.fromJson(Map<String, dynamic> json) => LikePostModal(
        likedBy: json["likedBy"],
        postId: json["postId"],
      );

  Map<String, dynamic> toJson() => {
        "likedBy": likedBy,
        "postId": postId,
      };
}

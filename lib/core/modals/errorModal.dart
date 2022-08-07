// To parse this JSON data, do
//
//     final errorModal = errorModalFromJson(jsonString);

import 'dart:convert';

ErrorModal errorModalFromJson(String str) => ErrorModal.fromJson(json.decode(str));

String errorModalToJson(ErrorModal data) => json.encode(data.toJson());

class ErrorModal {
  ErrorModal({
    this.code,
    this.error,
  });

  String? code;
  String? error;

  factory ErrorModal.fromJson(Map<String, dynamic> json) => ErrorModal(
        code: json["code"],
        error: json["error"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "error": error,
      };
}

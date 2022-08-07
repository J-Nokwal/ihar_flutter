import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ihar_flutter/core/injection.dart';

import '../../../core/modals/userModal.dart';

//TODO:// add exception hnadling in this file
Future<void> createUserRequest(UserModals userModals) async {
  try {
    Response response = await getIt<Dio>().post("/user", data: userModals.toJson());
    print(response.data);
    print(userModalsFromJson(response.data));
    print("status code: ${response.statusCode}");
  } on Exception catch (e) {
    print(e);
  }
}

void getUserRequest(String id) async {
  Response response = await getIt<Dio>().get("/user/$id");
  print(response.data);
  print(userModalsFromJson(response.data));
  print("status code: ${response.statusCode}");
}

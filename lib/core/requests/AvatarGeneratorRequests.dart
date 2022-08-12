import 'dart:io';

import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

abstract class AvatarGenerator {
  static Future getNewAvatar(Dio dio) async {
    String seed = DateTime.now().toIso8601String();
    final a = await dio.get("https://avatars.dicebear.com/api/adventurer-neutral/$seed.png?scale=80",
        options: Options(responseType: ResponseType.bytes));
    return a.data;
  }
}

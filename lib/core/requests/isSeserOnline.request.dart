import 'package:dio/dio.dart';
import 'package:ihar_flutter/core/modals/likePostModal.dart';
import 'package:ihar_flutter/core/modals/likedModal.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/core/requests/requestUtils.dart';

import '../errors.dart';

abstract class IsServerOnlineRequest {
  static Future<bool> check(
    Dio dio,
  ) async {
    try {
      final Response response = await dio.get('/isServerOnline');
      if (response.statusCode == 200) {
        return true;
      }
      return false;
    } on DioError catch (e) {
      if (e.response?.statusCode == 200) {
        print(e.response!.data);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  static Future<List<UserModals>> getUsersByPostLike(Dio dio, {required int postId}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.get('/like/byPostId/$postId');
      // print(response.data);
      return usersAllModelFromJson(response.data);
    } on DioError catch (e) {
      if (e.response != null && e.response!.statusCode == 400) {
        print(e.response!.data);
      }
      print(e.message);
      throw AppExceptions.serverException(message: "Invalid operation", e: e);
    } on AppExceptions {
      rethrow;
    } catch (e) {
      throw AppExceptions(message: "Error");
    }
  }
}

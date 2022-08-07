import 'package:dio/dio.dart';
import 'package:ihar_flutter/core/modals/likePostModal.dart';
import 'package:ihar_flutter/core/modals/likedModal.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/core/requests/requestUtils.dart';

import '../errors.dart';

abstract class LikesRequests {
  static Future<bool> triggerLike(Dio dio, {required LikePostModal likePostModal}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.post('/like', data: likePostModalToJson(likePostModal));
      // print(response.data);
      return likedModalFromJson(response.data).liked;
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

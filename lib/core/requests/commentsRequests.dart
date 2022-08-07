import 'package:dio/dio.dart';
import 'package:ihar_flutter/core/modals/CommentsAllModal.dart';
import 'package:ihar_flutter/core/requests/requestUtils.dart';

import '../errors.dart';

abstract class CommentsRequests {
  static Future<void> createComment(Dio dio, {required CommentModal comment}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.post('/comment', data: commentModalToJson(comment));
      // print(response.data);
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

  static Future<List<CommentModal>> getAllCommentForPost(Dio dio, {required int postId}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.get('/comment/all/$postId');
      // print(response.data);
      return commentsAllModalFromJson(response.data);
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

  static Future<void> deleteComment(Dio dio, {required int id}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.delete('/comment/$id');

      // print(response.data);
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

  static Future<void> patchComment(Dio dio, {required CommentModal comment}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.patch('/user', data: commentModalToJson(comment));
      print(response.data);
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

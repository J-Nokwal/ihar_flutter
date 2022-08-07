import 'package:dio/dio.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/modals/errorModal.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/core/requests/requestUtils.dart';
import 'package:injectable/injectable.dart';

class UsersRequests {
  static Future<UserModals> createUser(Dio dio, {required UserModals user}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.post('/user', data: userModalsToJson(user));
      print(response.data);
      return userModalsFromJson(response.data);
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

  static Future<UserModals> getUser(Dio dio, {required String id}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.get('/user/$id');
      return userModalsFromJson(response.data);
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

  static Future<void> patchUser(Dio dio, {required UserModals user}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.patch('/user', data: userModalsToJson(user));
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
}

import 'package:dio/dio.dart';
import 'package:ihar_flutter/core/modals/searchResultModal.dart';
import 'package:ihar_flutter/core/requests/requestUtils.dart';

import '../errors.dart';

abstract class SearchRequests {
  static Future<SearchResultModal> getSearchResults(Dio dio,
      {required String byUser, required String searchQuery}) async {
    try {
      if (!await hasNetwork()) {
        throw AppExceptions.networkException();
      }
      final Response response = await dio.get('/search/$searchQuery/$byUser');
      return searchResultModalFromJson(response.data);
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

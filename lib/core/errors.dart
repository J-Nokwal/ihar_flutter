import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ihar_flutter/core/modals/errorModal.dart';
part 'errors.freezed.dart';

@freezed
abstract class AppExceptions with _$AppExceptions, Exception {
  // final String? message;
  // AppExceptions({this.message});
  factory AppExceptions({String? message, Exception? e}) = _AppExceptions;

  factory AppExceptions.networkException({@Default("network Error") String? message, Exception? e}) = _networkException;
  factory AppExceptions.statusCodeNot200({String? message, Exception? e}) = _statusCodeNot200;
  factory AppExceptions.apiSendsErrorStatus({String? message, Exception? e}) = _apiSendsErrorStatus;

  factory AppExceptions.appAuthException({String? message, Exception? e}) = _appAuthException;
  factory AppExceptions.serverException({@Default("Invalid operation") String? message, Exception? e}) =
      _ServerException;
  // factory AppExceptions.networkException({String? message}) = _networkException;
  // factory AppExceptions.networkException({String? message}) = _networkException;
  // factory AppExceptions.networkException({String? message}) = _networkException;
}

import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:ihar_flutter/core/injection.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

// flutter packages pub run build_runner build
final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);

@module
abstract class RegisterModulesss {
  @lazySingleton
  // Dio get dio => Dio(BaseOptions(baseUrl: "http://65.2.4.221")); // construct it the way you want
  Dio get dio {
    if (kIsWeb) {
      // return Dio(BaseOptions(baseUrl: "https://20.29.16.252"));
      return Dio(BaseOptions(baseUrl: "http://192.168.18.184:8080", responseType: ResponseType.plain));
      // return Dio(BaseOptions(baseUrl: "https://localhost:8080"));
    }
    if (Platform.isAndroid) {
      // return Dio(BaseOptions(baseUrl: "http://172.16.40.113:8080", responseType: ResponseType.plain));
      return Dio(BaseOptions(baseUrl: "http://192.168.18.184:8080", responseType: ResponseType.plain));
    }

    return Dio(BaseOptions(baseUrl: "localhost:8080"));
  } // construct it the way you want

  @lazySingleton
  Stream<ConnectivityResult> get connectivityResult => Connectivity().onConnectivityChanged;

  // @LazySingleton

}

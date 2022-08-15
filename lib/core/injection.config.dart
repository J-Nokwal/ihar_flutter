// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async' as _i11;

import 'package:connectivity_plus/connectivity_plus.dart' as _i12;
import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/comments/bloc/comments_bloc/comments_bloc.dart' as _i15;
import '../features/common/side_container_bloc/side_container_bloc.dart' as _i9;
import '../features/CreatePost/bloc/create_post_bloc/create_post_bloc.dart'
    as _i16;
import '../features/feed/bloc/feed_bloc/feed_bloc.dart' as _i7;
import '../features/homeScreen/bloc/search_bloc.dart/search_bloc.dart' as _i8;
import '../features/login/bloc/sign_up_with_email/sign_up_with_email_bloc.dart'
    as _i10;
import '../features/user/user_screen_bloc/user_screen_bloc.dart' as _i13;
import 'bloc/auth_%20bloc/auth_bloc.dart' as _i14;
import 'deepLinksService.dart' as _i6;
import 'firebase_classes/firebase_auth.dart' as _i3;
import 'firebase_classes/firebase_storage.dart' as _i4;
import 'injection.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModulesss = _$RegisterModulesss();
  gh.singleton<_i3.AppAuth>(_i3.AppAuth());
  gh.singleton<_i4.AppFireBaseStorage>(_i4.AppFireBaseStorage());
  gh.lazySingleton<_i5.Dio>(() => registerModulesss.dio);
  gh.lazySingleton<_i6.DynamicLinkService>(() => _i6.DynamicLinkService());
  gh.factory<_i7.FeedBloc>(
      () => _i7.FeedBloc(get<_i5.Dio>(), get<_i3.AppAuth>()));
  gh.factory<_i8.SearchBloc>(
      () => _i8.SearchBloc(get<_i5.Dio>(), get<_i3.AppAuth>()));
  gh.factory<_i9.SideContainerBloc>(
      () => _i9.SideContainerBloc(get<_i5.Dio>(), get<_i3.AppAuth>()));
  gh.factory<_i10.SignUpWithEmailBloc>(() => _i10.SignUpWithEmailBloc(
      dio: get<_i5.Dio>(),
      appAuth: get<_i3.AppAuth>(),
      appFireBaseStorage: get<_i4.AppFireBaseStorage>()));
  gh.lazySingleton<_i11.Stream<_i12.ConnectivityResult>>(
      () => registerModulesss.connectivityResult);
  gh.factory<_i13.UserScreenBloc>(
      () => _i13.UserScreenBloc(get<_i5.Dio>(), get<_i3.AppAuth>()));
  gh.lazySingleton<_i14.AuthBloc>(() => _i14.AuthBloc(
      dio: get<_i5.Dio>(),
      appAuth: get<_i3.AppAuth>(),
      appFireBaseStorage: get<_i4.AppFireBaseStorage>()));
  gh.factory<_i15.CommentsBloc>(
      () => _i15.CommentsBloc(get<_i5.Dio>(), get<_i3.AppAuth>()));
  gh.factory<_i16.CreatePostBloc>(() => _i16.CreatePostBloc(
      get<_i5.Dio>(), get<_i3.AppAuth>(), get<_i4.AppFireBaseStorage>()));
  return get;
}

class _$RegisterModulesss extends _i17.RegisterModulesss {}

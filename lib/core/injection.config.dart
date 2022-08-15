// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async' as _i13;

import 'package:connectivity_plus/connectivity_plus.dart' as _i14;
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/comments/bloc/comments_bloc/comments_bloc.dart' as _i17;
import '../features/common/side_container_bloc/side_container_bloc.dart'
    as _i11;
import '../features/CreatePost/bloc/create_post_bloc/create_post_bloc.dart'
    as _i18;
import '../features/feed/bloc/feed_bloc/feed_bloc.dart' as _i9;
import '../features/homeScreen/bloc/search_bloc.dart/search_bloc.dart' as _i10;
import '../features/login/bloc/sign_up_with_email/sign_up_with_email_bloc.dart'
    as _i12;
import '../features/user/user_screen_bloc/user_screen_bloc.dart' as _i15;
import 'bloc/auth_%20bloc/auth_bloc.dart' as _i16;
import 'deepLinksService.dart' as _i8;
import 'firebase_classes/firebase_auth.dart' as _i3;
import 'firebase_classes/firebase_firestor.dart' as _i5;
import 'firebase_classes/firebase_notifications.dart' as _i6;
import 'firebase_classes/firebase_storage.dart' as _i4;
import 'injection.dart' as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModulesss = _$RegisterModulesss();
  gh.singleton<_i3.AppAuth>(_i3.AppAuth());
  gh.singleton<_i4.AppFireBaseStorage>(_i4.AppFireBaseStorage());
  gh.factory<_i5.AppFireStore>(() => _i5.AppFireStore());
  gh.singleton<_i6.AppFirebaseNotifications>(_i6.AppFirebaseNotifications());
  gh.lazySingleton<_i7.Dio>(() => registerModulesss.dio);
  gh.lazySingleton<_i8.DynamicLinkService>(() => _i8.DynamicLinkService());
  gh.factory<_i9.FeedBloc>(
      () => _i9.FeedBloc(get<_i7.Dio>(), get<_i3.AppAuth>()));
  gh.factory<_i10.SearchBloc>(
      () => _i10.SearchBloc(get<_i7.Dio>(), get<_i3.AppAuth>()));
  gh.factory<_i11.SideContainerBloc>(
      () => _i11.SideContainerBloc(get<_i7.Dio>(), get<_i3.AppAuth>()));
  gh.factory<_i12.SignUpWithEmailBloc>(() => _i12.SignUpWithEmailBloc(
      dio: get<_i7.Dio>(),
      appAuth: get<_i3.AppAuth>(),
      appFireBaseStorage: get<_i4.AppFireBaseStorage>()));
  gh.lazySingleton<_i13.Stream<_i14.ConnectivityResult>>(
      () => registerModulesss.connectivityResult);
  gh.factory<_i15.UserScreenBloc>(
      () => _i15.UserScreenBloc(get<_i7.Dio>(), get<_i3.AppAuth>()));
  gh.lazySingleton<_i16.AuthBloc>(() => _i16.AuthBloc(
      dio: get<_i7.Dio>(),
      appAuth: get<_i3.AppAuth>(),
      appFireBaseStorage: get<_i4.AppFireBaseStorage>()));
  gh.factory<_i17.CommentsBloc>(
      () => _i17.CommentsBloc(get<_i7.Dio>(), get<_i3.AppAuth>()));
  gh.factory<_i18.CreatePostBloc>(() => _i18.CreatePostBloc(
      get<_i7.Dio>(), get<_i3.AppAuth>(), get<_i4.AppFireBaseStorage>()));
  return get;
}

class _$RegisterModulesss extends _i19.RegisterModulesss {}

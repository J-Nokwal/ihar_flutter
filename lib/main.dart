// ignore_for_file: prefer_const_constructors
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/generateRoute.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/core/requests/postRequests.dart';
import 'package:ihar_flutter/core/requests/userRequests.dart';
import 'package:ihar_flutter/features/common/snakbar.dart';
import 'core/bloc/auth_ bloc/auth_bloc.dart';
import 'core/deepLinksService.dart';
import 'core/firebase_classes/firebase_notifications.dart';
import 'core/injection.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //Use [flutterfire configure] if DefaultFirebaseOptions not available
  ByteData data = await PlatformAssetBundle().load('assets/ca/cert.pem');
  SecurityContext.defaultContext.setTrustedCertificatesBytes(data.buffer.asUint8List());

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await Firebase.initializeApp();
  configureDependencies();
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  await getIt<AppFirebaseNotifications>().setup();

  runApp(MyApp());
}

class MyApp extends StatefulWidget with WidgetsBindingObserver {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      getIt<DynamicLinkService>().retrieveDynamicLink().listen(onDeepLink);
    }
  }

  @override
  void initState() {
    GoogleFonts.config.allowRuntimeFetching = false;
    super.initState();
    getIt<DynamicLinkService>().handleDynamicLinks().listen(onDeepLink);
    getIt<DynamicLinkService>().getInitialLink().then(onDeepLink);
    getIt<AppFirebaseNotifications>()
      ..handleforgroundMessage()
      ..handleBackgroundOnTapMessage()
      ..handleTerminatedStateOnTapMessage();
  }

  void onDeepLink(AppDeepLinkData? appDeepLinkData) async {
    if (appDeepLinkData != null) {
      final appAuth = getIt<AppAuth>();
      if (appAuth.firebaseAuthInstance.currentUser != null) {
        if (appDeepLinkData.type == DeepLinkType.userProfileLink) {
          UserModals userModals = await UsersRequests.getUser(getIt<Dio>(), id: appDeepLinkData.id);
          _navigator.currentState?.pushNamed("/home/user", arguments: [userModals, appAuth]);
        } else if (appDeepLinkData.type == DeepLinkType.postLink) {
          PostModals postModals = await PostsRequests.getPostForUser(getIt<Dio>(),
              postId: int.parse(appDeepLinkData.id), userId: appAuth.firebaseAuthInstance.currentUser!.uid);
          _navigator.currentState?.pushNamed("/home/postComments", arguments: postModals);
        }
      } else {
        _scafoldMessangerKey.currentState?.showSnackBar(AppSnackBars.withText("You need to signIn first"));
      }
    }
  }

  @override
  void dispose() {
    authBloc.close();
    super.dispose();
  }

  final GlobalKey<ScaffoldMessengerState> _scafoldMessangerKey = GlobalKey<ScaffoldMessengerState>();

  final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();

  final authBloc = getIt<AuthBloc>();
  @override
  Widget build(BuildContext context) {
    final c = getIt<Stream<ConnectivityResult>>();
    // c.listen((event) {
    //   print(event.toString());
    // });

    return Builder(builder: (context) {
      return BlocProvider(
        create: (context) => authBloc..add(AuthEvent.checkAuth()),
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.mapOrNull(loading: (_) {
              // return Navigator.of(context).pushReplacementNamed("/splashScreen");
            }, signedin: (s) {
              print("signed in state in listner");
              return _navigator.currentState
                  ?.pushNamedAndRemoveUntil("/home", ((route) => route.isFirst), arguments: s.user);
            }, signedOut: (_) {
              print("signed out  state in listner");
              return _navigator.currentState?.pushNamedAndRemoveUntil("/signInScreen", ((route) => route.isFirst));
              // return _navigator.currentState?.pushNamedAndRemoveUntil("/signInScreen", ((route) => route.isFirst));
            }, exception: (s) async {
              if (s.appExceptions == AppExceptions.noInternetException()) {
                return _navigator.currentState
                    ?.pushNamedAndRemoveUntil("/noInternetScreen", ((route) => route.isFirst), arguments: [
                  () async {
                    authBloc.add(const AuthEvent.checkAuth());
                  },
                  null
                ]);
              } else if (s.appExceptions == AppExceptions.serverNotOnlie()) {
                return _navigator.currentState
                    ?.pushNamedAndRemoveUntil("/serverNotOnlineScreen", ((route) => route.isFirst), arguments: [
                  () async {
                    authBloc.add(const AuthEvent.checkAuth());
                  },
                  null
                ]);
              } else {
                _scafoldMessangerKey.currentState
                    ?.showSnackBar(AppSnackBars.withText(s.appExceptions.message ?? "Error"));
              }
            });
          },
          child: MaterialApp(
            title: 'Material App',
            debugShowCheckedModeBanner: false,
            navigatorKey: _navigator,
            scaffoldMessengerKey: _scafoldMessangerKey,
            onGenerateRoute: Routers.generateRoute,
            theme: _buildTheme(Brightness.light),
            initialRoute: '/splashScreen',
          ),
        ),
      );
    });
  }
}

ThemeData _buildTheme(brightness) {
  var baseTheme = ThemeData(
    brightness: brightness,
    fontFamily: "Convergence",
    useMaterial3: true,
    pageTransitionsTheme: PageTransitionsTheme(builders: const {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    }),
  );
  return baseTheme;
}

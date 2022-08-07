// ignore_for_file: prefer_const_constructors

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ihar_flutter/core/generateRoute.dart';
import 'package:ihar_flutter/core/requests/userRequests.dart';
import 'core/bloc/auth_ bloc/auth_bloc.dart';
import 'core/injection.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await Firebase.initializeApp();
  configureDependencies();
  // await getIt<DynamicLinkService>().handleDynamicLinks();

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
      // getIt<DynamicLinkService>().retrieveDynamicLink();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    authBloc.close();
    super.dispose();
  }

  final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();

  final authBloc = getIt<AuthBloc>()..add(const AuthEvent.checkAuth());
  @override
  Widget build(BuildContext context) {
    final c = getIt<Stream<ConnectivityResult>>();
    // c.listen((event) {
    //   print(event.toString());
    // });

    return Builder(builder: (context) {
      return BlocProvider(
        create: (context) => authBloc,
        child: BlocListener<AuthBloc, AuthState>(
          listener: (context, state) {
            state.map(loading: (_) {
              // return Navigator.of(context).pushReplacementNamed("/splashScreen");
            }, signedin: (s) {
              print("signed in state in listner");
              return _navigator.currentState?.pushNamedAndRemoveUntil("/home", ((route) => route.isFirst));
            }, signedOut: (_) {
              print("signed out  state in listner");

              return _navigator.currentState?.pushNamed("/signInScreen");
              // return _navigator.currentState?.pushNamedAndRemoveUntil("/signInScreen", ((route) => route.isFirst));
            });
          },
          child: MaterialApp(
            title: 'Material App',
            debugShowCheckedModeBanner: false,
            navigatorKey: _navigator,
            onGenerateRoute: Routers.generateRoute,
            theme: ThemeData(primaryColor: Colors.blue, appBarTheme: AppBarTheme(color: Colors.pinkAccent)),
            initialRoute: '/splashScreen',
          ),
        ),
      );
    });
  }
}

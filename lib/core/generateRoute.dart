import 'package:flutter/material.dart';
import 'package:ihar_flutter/core/firebase_classes/firebase_auth.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:ihar_flutter/features/CreatePost/Screens/createPostScreen.dart';
import 'package:ihar_flutter/features/comments/screens/commentsScreen.dart';
import 'package:ihar_flutter/features/common/NoInternetConnectionScreen.dart';
import 'package:ihar_flutter/features/common/splashScreen.dart';
import 'package:ihar_flutter/features/homeScreen/screens/HomeScreen.dart';
import 'package:ihar_flutter/features/homeScreen/screens/SearchResultsScreen.dart';
import 'package:ihar_flutter/features/login/screens/signInScreen.dart';
import 'package:ihar_flutter/features/login/screens/signInWithEmailScreen.dart';
import 'package:ihar_flutter/features/user/Screens/userScreen.dart';

import '../features/common/ServerNotAvailable.dart';
import '../features/login/screens/signUpWithEmailScreen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/signInScreen':
        return MaterialPageRoute(builder: (_) => SignInScreen());
      case '/home':
        return MaterialPageRoute(
            builder: (_) => HomeScreen(
                  user: settings.arguments as UserModals,
                ));
      case '/home/createPost':
        return MaterialPageRoute(
            builder: (_) => CreatePostScreen(
                  userModals: settings.arguments as UserModals,
                ));
      case '/home/postComments':
        return MaterialPageRoute(
            builder: (_) => CommentsScreen(
                  post: settings.arguments as PostModals,
                ));
      case '/home/searchResults':
        return MaterialPageRoute(
            builder: (_) => SearchResultScreen(
                  query: settings.arguments as String,
                ));
      case '/home/user':
        return MaterialPageRoute(
            builder: (_) => UserScreen(
                  user: (settings.arguments as List)[0] as UserModals,
                  appAuth: (settings.arguments as List)[1] as AppAuth,
                ));
      case '/serverNotOnlineScreen':
        return MaterialPageRoute(
            builder: (_) => ServerNotAvailableWidget(
                  onPress: (settings.arguments as List)[0] as Future<void> Function(),
                  popOnRetry: (settings.arguments as List)[1] as bool?,
                ));
      case '/noInternetScreen':
        return MaterialPageRoute(
            builder: (_) => NoInternetConnectionScreen(
                  onPress: (settings.arguments as List)[0] as Future<void> Function(),
                  popOnRetry: (settings.arguments as List)[1] as bool?,
                ));
      case '/signupWithEmailScreen':
        return MaterialPageRoute(builder: (_) => SignUpWithEmailScreen());

      case '/signinWithEmailScreen':
        return MaterialPageRoute(builder: (_) => SignInWithEmailScreen());
      // case '/signupScreen':
      //   return MaterialPageRoute(
      //       builder: (_) => UserScreen(
      //             user: (settings.arguments as List)[0] as UserModals,
      //             appAuth: (settings.arguments as List)[1] as AppAuth,
      //           ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

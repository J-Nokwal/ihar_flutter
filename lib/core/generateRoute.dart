import 'package:flutter/material.dart';
import 'package:ihar_flutter/core/modals/postModal.dart';
import 'package:ihar_flutter/features/CreatePost/Screens/createPostScreen.dart';
import 'package:ihar_flutter/features/comments/screens/commentsScreen.dart';
import 'package:ihar_flutter/features/common/splashScreen.dart';
import 'package:ihar_flutter/features/homeScreen/screens/HomeScreen.dart';
import 'package:ihar_flutter/features/login/screens/signInScreen.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/splashScreen':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case '/signInScreen':
        return MaterialPageRoute(builder: (_) => SignInScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/home/createPost':
        return MaterialPageRoute(builder: (_) => CreatePostScreen());
      case '/home/postComments':
        return MaterialPageRoute(
            builder: (_) => CommentsScreen(
                  post: settings.arguments as PostModals,
                ));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}

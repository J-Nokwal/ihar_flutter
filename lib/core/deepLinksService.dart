import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/widgets.dart';
import 'package:injectable/injectable.dart';

enum DeepLinkType { userProfileLink, postLink }

@lazySingleton
class DynamicLinkService {
  Future<String> createDynamicLink(bool short, DeepLinkType deepLinkType, String idInString) async {
    String linkMessage;
    String type;
    if (deepLinkType == DeepLinkType.postLink) {
      type = "postLink";
    } else {
      type = "userProfileLink";
    }
    final DynamicLinkParameters parameters = DynamicLinkParameters(
      uriPrefix: 'https://iharflutter.page.link',
      link: Uri.parse('https://iharflutter.page.link/$type?id=$idInString'),
      androidParameters: const AndroidParameters(
        packageName: 'com.example.ihar_flutter',
      ),
      // iosParameters: IOSParameters(
      //   bundleId: "com.example.iharFlutter",
      //   appStoreId: "123456789",
      //   fallbackUrl: Uri.parse("ihar-7ab4b.firebaseapp.com"),
      // ),
    );
    Uri url;
    if (short) {
      final ShortDynamicLink shortLink = await FirebaseDynamicLinks.instance.buildShortLink(parameters);
      url = shortLink.shortUrl;
    } else {
      url = await FirebaseDynamicLinks.instance.buildLink(parameters);
    }
    linkMessage = url.toString();
    return linkMessage;
  }

  Future<AppDeepLinkData?> getInitialLink() async {
    // 1. Get the initial dynamic link if the app is opened with a dynamic link
    final PendingDynamicLinkData? data = await FirebaseDynamicLinks.instance.getInitialLink();

    // 2. handle link that has been retrieved
    return _handleDeepLink(data);
  }

  Stream<AppDeepLinkData?> handleDynamicLinks() {
    return FirebaseDynamicLinks.instance.onLink.map((PendingDynamicLinkData dynamicLink) {
      return _handleDeepLink(dynamicLink);
    });
  }

  Stream<AppDeepLinkData?> retrieveDynamicLink() async* {
    final PendingDynamicLinkData? data = await FirebaseDynamicLinks.instance.getInitialLink();
    print("checking for app lifecycle resume deep links");

    yield _handleDeepLink(data);
  }

  AppDeepLinkData? _handleDeepLink(PendingDynamicLinkData? data) {
    final Uri? deepLink = data?.link;
    if (deepLink != null) {
      print('_handleDeepLink | deeplink: $deepLink');
      // _signinWithEmailLink(deepLink.toString());
      if (deepLink.pathSegments.contains("userProfileLink")) {
        var qp = deepLink.queryParameters['id'];
        if (qp != null) {
          return AppDeepLinkData(DeepLinkType.userProfileLink, qp);
        }
      } else if (deepLink.pathSegments.contains("postLink")) {
        var qp = deepLink.queryParameters['id'];
        if (qp != null) {
          return AppDeepLinkData(DeepLinkType.postLink, qp);
        }
      }
    }
  }

  void _signinWithEmailLink(String emailLink) async {
    if (FirebaseAuth.instance.isSignInWithEmailLink(emailLink)) {
      try {
        // The client SDK will parse the code from the link for you.
        final userCredential =
            await FirebaseAuth.instance.signInWithEmailLink(email: "jagritnokwal9@gmail.com", emailLink: emailLink);

        // You can access the new user via userCredential.user.
        final emailAddress = userCredential.user?.email;

        print('Successfully signed in with email link!');
      } catch (error) {
        print('Error signing in with email link.');
      }
    }
  }
}

class AppDeepLinkData {
  final DeepLinkType type;
  final String id;

  AppDeepLinkData(this.type, this.id);
}

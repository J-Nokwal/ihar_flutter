import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class DynamicLinkService {
  Future handleDynamicLinks() async {
    // 1. Get the initial dynamic link if the app is opened with a dynamic link
    final PendingDynamicLinkData? data = await FirebaseDynamicLinks.instance.getInitialLink();

    // 2. handle link that has been retrieved
    _handleDeepLink(data);

    // 3. Register a link callback to fire if the app is opened up from the background
    // using a dynamic link.
    FirebaseDynamicLinks.instance.onLink.listen((PendingDynamicLinkData dynamicLink) async {
      // 3a. handle link that has been retrieved
      _handleDeepLink(dynamicLink);
    }, onError: (e) {
      print('Link Failed: ${e.message}');
    });
  }

  void _handleDeepLink(PendingDynamicLinkData? data) {
    final Uri? deepLink = data?.link;
    if (deepLink != null) {
      print('_handleDeepLink | deeplink: $deepLink');
      _signinWithEmailLink(deepLink.toString());
      // if (deepLink.pathSegments.contains("SignInWithEmailLink")) {
      //   var qp = deepLink.queryParameters['link'];
      //   if (qp != null) {
      //     // _signinWithEmailLink(qp);
      //   }
      // }
    }
  }

  void _signinWithEmailLink(String emailLink) async {
    // String emailLink="";

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

  Future<void> retrieveDynamicLink() async {
    final PendingDynamicLinkData? data = await FirebaseDynamicLinks.instance.getInitialLink();

    final Uri? deepLink = data?.link;
    print(deepLink.toString());

    if (deepLink.toString() != null) {
      _signinWithEmailLink(deepLink.toString());
    }
  }
}

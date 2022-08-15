import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ihar_flutter/core/errors.dart';
import 'package:ihar_flutter/core/modals/userModal.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppAuth {
  FirebaseAuth firebaseAuthInstance = FirebaseAuth.instance;
  UserModals? userModal;
  var acs = ActionCodeSettings(
      // URL you want to redirect back to. The domain (www.example.com) for this
      // URL must be whitelisted in the Firebase Console.
      url: 'https://iharflutter.page.link/r394',
      // url: "",
      // This must be true
      handleCodeInApp: true,
      iOSBundleId: 'com.example.iharFlutter',
      androidPackageName: 'com.example.ihar_flutter',
      // installIfNotAvailable
      androidInstallApp: false,
      // minimumVersion
      androidMinimumVersion: '19');
  bool get isAuthenticated => firebaseAuthInstance.currentUser != null;
  UserCredential? userCredential;
  GoogleSignIn googleSignIn = GoogleSignIn(
    clientId: "823310925634-17541qrt9hmklmt57idl8pv1s12o96ak.apps.googleusercontent.com",
  );

  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      if (googleUser == null) {
        throw Exception("error while signing with google");
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      userCredential = await firebaseAuthInstance.signInWithCredential(credential);
      return userCredential!;
    } on FirebaseAuthException catch (e) {
      print(e);
      throw AppExceptions.appAuthException(message: "Error while siging with google", e: e);
    } on AppExceptions {
      rethrow;
    } on Exception catch (e) {
      throw AppExceptions.appAuthException(message: "Error while siging with google", e: e);
    }
  }

  //TODO:// remove 'jagritnokwal9@gmail.com.com'
  Future<void> sendSignInLinkToEmail({String emailAuth = 'jagritnokwal9@gmail.com'}) async {
    // emailAuth = "jnokwal_be19@thapar.edu";
    FirebaseAuth.instance
        .sendSignInLinkToEmail(email: emailAuth, actionCodeSettings: acs)
        .catchError((onError) => print('Error sending email verification $onError'))
        .then((value) => print('Successfully sent email verification to $emailAuth with acc=${acs.url}'));
  }

  Future<UserCredential> signUpWithEmail({required String emailAddress, required String password}) async {
    UserCredential? credential;
    try {
      credential = await firebaseAuthInstance.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      // firebaseAuthInstance;

      if (credential.user != null) {
        print("is new user : ${credential.additionalUserInfo!.isNewUser}");
        credential.user!.sendEmailVerification();
        return credential;
      } else {
        throw AppExceptions.appAuthException(message: "cant sent verification message");
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw AppExceptions.appAuthException(message: "The password provided is too weak", e: e);
      } else if (e.code == 'email-already-in-use') {
        if (credential?.user != null) {
          credential?.user?.sendEmailVerification();
          // throw AppExceptions.appAuthException(message: "Verification Email Sent", e: e);
          return credential!;
        } else {
          throw AppExceptions.appAuthException(message: "Verification Email already sent.");
        }
      } else {
        throw AppExceptions.appAuthException(message: e.message);
      }
    } on AppExceptions {
      rethrow;
    } catch (e) {
      print(e);
      throw AppExceptions.appAuthException(message: "Error while creating account");
    }
  }

  Future<UserCredential> signInWithEmail({required String emailAddress, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailAddress, password: password);
      if (!credential.user!.emailVerified) {
        throw AppExceptions(message: "Email Not Verified");
      }
      userCredential = credential;
      return credential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        throw AppExceptions.appAuthException(message: "No user found for that email.", e: e);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        throw AppExceptions.appAuthException(message: "Wrong password provided", e: e);
      } else {
        print(e);
        throw AppExceptions.appAuthException(message: "Error while siging", e: e);
      }
    } on AppExceptions {
      rethrow;
    } catch (e) {
      print(e);
      throw AppExceptions.appAuthException(message: "Error while siging");
    }
  }

  Future<UserCredential> signInAnonymously() async {
    try {
      final Credential = await FirebaseAuth.instance.signInAnonymously();
      print("Signed in with temporary account.");
      userCredential = Credential;

      return Credential;
    } on FirebaseAuthException catch (e) {
      print(e);
      throw AppExceptions.appAuthException(message: "Error while siging", e: e);
    } catch (e) {
      print(e);
      throw AppExceptions.appAuthException(message: "Error while siging");
    }
  }

  Future updateUserData({String? displayName, String? profilePhoto}) async {
    if (displayName != null) {
      firebaseAuthInstance.currentUser?.updateDisplayName(displayName);
    }
    if (profilePhoto != null) {
      firebaseAuthInstance.currentUser?.updatePhotoURL(profilePhoto);
    }
  }

  Future linkAnonymousAccount({
    required AuthType authType,
    String? emailAddress,
    String? password,
  }) async {
    assert(authType != AuthType.email && emailAddress != null && password != null,
        "In linkAnonymousAccount, for AuthType.email email and password must not be null ");
    late AuthCredential credential;
    try {
      switch (authType) {
        case AuthType.google:
          final GoogleSignInAccount? googleUser =
              await GoogleSignIn(clientId: "823310925634-17541qrt9hmklmt57idl8pv1s12o96ak.apps.googleusercontent.com")
                  .signIn();
          final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

          credential =
              GoogleAuthProvider.credential(idToken: googleAuth?.idToken, accessToken: googleAuth?.accessToken);
          break;
        case AuthType.email:
          credential = EmailAuthProvider.credential(email: emailAddress!, password: password!);
          break;
        default:
      }
    } on FirebaseException catch (e) {
      throw AppExceptions.appAuthException(message: "Error while linking", e: e);
    } catch (e) {
      print(e);
      throw AppExceptions.appAuthException(message: "Error while siging");
    }

    try {
      final userCredential = await FirebaseAuth.instance.currentUser?.linkWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "provider-already-linked":
          print("The provider has already been linked to the user.");
          throw AppExceptions.appAuthException(message: "The provider has already been linked to the user", e: e);
        case "invalid-credential":
          print("The provider's credential is not valid.");
          throw AppExceptions.appAuthException(message: "The provider's credential is not valid", e: e);
        case "credential-already-in-use":
          print("The account corresponding to the credential already exists, "
              "or is already linked to a Firebase User.");
          throw AppExceptions.appAuthException(
              message: "The account corresponding to the credential already exists, "
                  "or is already linked to a User.",
              e: e);
        default:
          print("Unknown error.");
          throw AppExceptions.appAuthException(message: "Error while linking", e: e);
      }
    }
  }

  Future<void> signOut() async {
    if (firebaseAuthInstance.currentUser != null) {
      print("signing out");
      // await googleSignIn.signOut();
      for (UserInfo userInfo in firebaseAuthInstance.currentUser!.providerData) {
        if (userInfo.providerId == "google.com") {
          await googleSignIn.signOut();
          print("signed out from google provider");
        }
      }
      await firebaseAuthInstance.signOut();

      userCredential = null;
      print("sign out");
    }
  }
}

// ignore: non_constant_identifier_names
enum AuthType { email, google, anonymous }

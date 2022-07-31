// ignore_for_file: use_build_context_synchronously
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:growwui/AUTHENTICATION/SCREENS/login_screen.dart';
import 'package:growwui/AUTHENTICATION/SCREENS/otp_screen.dart';
import 'package:growwui/Utils/Widgets/Common/custom_bot_bar.dart';
import 'package:growwui/Utils/Widgets/show_otp_dialog.dart';
import 'package:growwui/Utils/show_snackbar.dart';

import '../../View/Screens/Home/home_page.dart';

class FirebaseAuthMethods {
  final FirebaseAuth auth;
  FirebaseAuthMethods({
    required this.auth,
  });

// State persistence
  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();

  // EMAIL LOGIN
  Future<void> loginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (!auth.currentUser!.emailVerified) {
        await sendEmailVerification(context);
        // restrict access to certain things using provider
        // transition to another page instead of home screen
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!); // Displaying the error message
    }
  }

// Email Signup(),
  Future<void> signUpWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await sendEmailVerification(context);
      //  await phoneVerification(context);
    } on FirebaseException catch (e) {
      // if(e.code == 'weak-password'){
      // showSnackBar(context,'you give a wrong password');
      // }
      showSnackBar(context, e.message!);
    }

    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
      return const LoginScreen();
    }), (route) => false);
  }

//Email Verification(),
  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      auth.currentUser!.sendEmailVerification();
      showSnackBar(context, 'Email verification sent');
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

// google sign in authentication
  Future<void> signwithGoogle(BuildContext context) async {
    try {
      if (kIsWeb) {
        GoogleAuthProvider googleProvider = GoogleAuthProvider();
        googleProvider
            .addScope('https://www.googleapis.com/auth/contacts.readonly');
        await auth.signInWithPopup(googleProvider);
        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
          return const CustomBottomNavigationBar();
        }), (route) => false);
      } else {
        //google sign in
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
        if (kDebugMode) {
          print(googleUser);
        }

        final GoogleSignInAuthentication? googleAuth =
            await googleUser?.authentication;

        if (googleAuth?.accessToken != null) {
          // Create a new credential
          final credential = GoogleAuthProvider.credential(
            accessToken: googleAuth?.accessToken,
          );

// you cant use two different ways google sign in and sign up we use only one Method(),
          UserCredential userCredential =
              await auth.signInWithCredential(credential);
          if (kDebugMode) {
            print(userCredential.user!.email);
          }
        }
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
      return const CustomBottomNavigationBar();
    }), (route) => false);
  }

// for facebook sigin In(),
  Future<void> signInWithFacebook(BuildContext context) async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance.login();
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);
      await auth.signInWithCredential(facebookAuthCredential);
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
      return const CustomBottomNavigationBar();
    }), (route) => false);
  }

// Phoneverification(),
  Future<void> phoneSignIn(
    BuildContext context,
    String phoneNumber,
  ) async {
    TextEditingController codeController = TextEditingController();

    //for web Only(),
    if (kIsWeb) {
      //web
      ConfirmationResult result = await auth.signInWithPhoneNumber(phoneNumber);
      //Display Dialog Box to accept OTP
      showOtpDialog(
        context: context,
        codeController: codeController,
        onPressed: () async {
          PhoneAuthCredential credential = PhoneAuthProvider.credential(
            verificationId: result.verificationId,
            smsCode: codeController.text.trim(),
          );
          await auth.signInWithCredential(credential);
          Navigator.of(context).pop();
        },
      );
    }
    //for android,ios
    else {
      await auth.verifyPhoneNumber(
        phoneNumber: '+91$phoneNumber',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          showSnackBar(context, e.message!);
        },
        codeSent: ((String verificationId, int? resendToken) async {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTPSCREEN(
                codeController: codeController,
                onPressed: () async {
                  PhoneAuthCredential credential = PhoneAuthProvider.credential(
                      smsCode: codeController.text.trim(),
                      verificationId: verificationId);
                  await auth.signInWithCredential(credential).then(
                      (value) => Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>const CustomBottomNavigationBar(),
                            ),
                            (route) => false,
                          ), onError: (error) {
                    showSnackBar(context, 'Wrong Otp');
                  });
                },
              ),
            ),
          );
        }),
        codeAutoRetrievalTimeout: (String verificationId) {
          //Auto-resolution timed out...
        },
      );
    }
  }

// Signout(),

  Future<void> signOut(BuildContext context) async {
    try {
      auth.signOut;
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
  }

  // anomanyus sign In(),
  Future<void> signInAnonymously(BuildContext context) async {
    try {
      await auth.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
      return const CustomBottomNavigationBar();
    }), (route) => false);
  }
}

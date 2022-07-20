// ignore_for_file: use_build_context_synchronously
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:growwui/AUTHENTICATION/SCREENS/login_screen.dart';
import 'package:growwui/Utils/Widgets/show_otp_dialog.dart';
import 'package:growwui/Utils/show_snackbar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth auth;
  FirebaseAuthMethods({
    required this.auth,
  });
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
      } else {
        //google sign in
        final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
        print(googleUser);

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
          print(userCredential.user!.email);
        }
      }
    } on FirebaseAuthException catch (e) {
      showSnackBar(context, e.message!);
    }
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
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          showSnackBar(context, e.message!);
        },
        codeSent: ((String verificationId, int? resendToken) async {
          showOtpDialog(
              context: context,
              codeController: codeController,
              onPressed: () async {
                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                  verificationId: verificationId,
                  smsCode: codeController.text.trim(),
                );
                await auth.signInWithCredential(credential);
                Navigator.of(context).pop();
              });
        }),
        codeAutoRetrievalTimeout: (String verificationId) {
          //Auto-resolution timed out...
        },
      );
    }
  }
}


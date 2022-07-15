// ignore_for_file: use_build_context_synchronously
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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


// google sign in
// Future<void>signwithGoogle(){


// }

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
    } else {
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
    //for android,ios
    
  }
}

// Future signUp() async {
//   showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) => const Center(child: CircularProgressIndicator()));
//   try {
//     await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: _emailSignUpController.text.trim(),
//       password: _passWordSignUpController.text.trim(),
//     );
//   } on FirebaseAuthException catch (e) {
//     print(e);
//     Utils.showSnackBar(e.message);
//   }
//   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
//     return const LoginScreen();
//   }), (route) => false);
// }

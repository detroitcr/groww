import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:growwui/AUTHENTICATION/SCREENS/login_screen.dart';
import 'package:growwui/Utils/showSnackbar.dart';

class FirebaseAuthMethods {
  final FirebaseAuth auth;
  FirebaseAuthMethods({
   required this.auth,
  });
// Email Signup(),
Future<void>signUpWithEmail({
  required String email,
  required String password,
  required BuildContext context,
}) async{
  try{
    await auth.createUserWithEmailAndPassword(email: email, password: password,);
  } on FirebaseException catch(e){
    // if(e.code == 'weak-password'){
    // showSnackBar(context,'you give a wrong password');  
    // }
    showSnackBar(context,e.message!);
  }
  
     // ignore: use_build_context_synchronously
     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
      return const LoginScreen();
    }), (route) => false);
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







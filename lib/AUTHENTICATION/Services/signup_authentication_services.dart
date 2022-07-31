


import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SignUpAuthentication{
//1
final FirebaseAuth firebaseAuth;
SignUpAuthentication(this.firebaseAuth);

//2
Stream<User?> get authStateChanges => firebaseAuth.authStateChanges();
Future<String> signUp({required String email,required String password}) async{
  try{
    await firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return "Signed Up";
  }on FirebaseAuthException catch(e){
    Fluttertoast.showToast(msg: e.message!);
    return e.message!;
  }
}
User? getUser(){
  try{
    return firebaseAuth.currentUser!;
  }on FirebaseAuthException{
    return null;
  }
}
}
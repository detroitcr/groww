




// import 'package:flutter/material.dart';
// import 'package:growwui/AUTHENTICATION/SCREENS/login_screen.dart';
// import 'package:growwui/AUTHENTICATION/SCREENS/signup.dart';

// class AuthScreen extends StatefulWidget {
//   const AuthScreen({Key? key}) : super(key: key);

//   @override
//   State<AuthScreen> createState() => _AuthScreenState();
// }

// class _AuthScreenState extends State<AuthScreen> {
//   // initially show login Screen(bool),
//   bool showLoginScreen = true;


//   void toggleScreens(){
//     setState(() {
//       showLoginScreen = !showLoginScreen;
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     if(showLoginScreen){
//       return LoginScreen(showSignUpScreen: toggleScreens);
//     }else{
//       return SignUpScreen(showLoginScreen: toggleScreens);
//     }
//   }
// }
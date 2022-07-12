// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';
// import 'package:growwui/AUTHENTICATION/SCREENS/auth_screen.dart';
// import 'package:growwui/Utils/Widgets/Common/custom_bot_bar.dart';

// class MainPage extends StatelessWidget {
//   const MainPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<FirebaseApp>(
//         future: Firebase.initializeApp(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return const CustomBottomNavigationBar();
//           } else {
//             return const AuthScreen();
//           }
//         },
//       ),
//     );
//   }
// }

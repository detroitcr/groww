import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:growwui/AUTHENTICATION/SCREENS/login_screen.dart';
import 'package:growwui/AUTHENTICATION/main_page.dart';
import 'package:growwui/Utils/Widgets/Common/custom_bot_bar.dart';
import 'package:growwui/View/Screens/Crypto/crypto_screen.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:
      //const CryptoScreen() 
      const LoginScreen(),
      // ProfileScreen(),
      //const CustomBottomNavigationBar()
      //HomeScreen(),
    );
  }
}

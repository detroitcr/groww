import 'package:flutter/material.dart';
import 'package:growwui/Utils/Widgets/Common/custom_bot_bar.dart';

import 'package:growwui/View/Screens/Home/home_page.dart';

void main() {
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
      home: const CustomBottomNavigationBar()
      //HomeScreen(),
    );
  }
}


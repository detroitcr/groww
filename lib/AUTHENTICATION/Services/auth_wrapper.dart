import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Utils/Widgets/Common/custom_bot_bar.dart';
import '../SCREENS/login_screen.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // context.watch<User?>() is a shortform of Provider.of(context)
final firebaseUser = context.watch<User?>();
if(firebaseUser !=null){
  return const CustomBottomNavigationBar();
} else{
  return const LoginScreen();
}
  }
}
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:growwui/AUTHENTICATION/SCREENS/login_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class SignOut extends StatefulWidget {
  const SignOut({Key? key}) : super(key: key);

  @override
  State<SignOut> createState() => _SignOutState();
}

class _SignOutState extends State<SignOut> {
  FirebaseAuth auth = FirebaseAuth.instance;

  Future signOut() async {
    await auth.signOut().then((value) {
      // Navigator.push(context,MaterialPageRoute(builder: (context){
      //   return const LoginScreen();
      // }));
//controller!.dispose();
      // await

      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
        return const LoginScreen();
      }), (route) => false);

      pushNewScreen(
        context,
        screen: const LoginScreen(),

        withNavBar: false, // OPTIONAL VALUE. True by default.
        pageTransitionAnimation: PageTransitionAnimation.cupertino,
      );
    }

        // Navigator.pop(context));
        );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: const Text('LogOut'),
      onPressed: signOut,
      icon: const Icon(Icons.exit_to_app),
    );
  }
}

// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:growwui/AUTHENTICATION/SCREENS/phone_verification_screen.dart';
import 'package:growwui/AUTHENTICATION/SCREENS/signup_screen.dart';
import 'package:growwui/AUTHENTICATION/Services/firebase_auth_methods.dart';
import 'package:growwui/AUTHENTICATION/WIDGETS/custom_text_field.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/Common/custom_bot_bar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();
  bool isHidden = true;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  bool isText = true;
  //final auth = FirebaseAuth.instance;

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text.trim(),
          password: passWordController.text.trim());
    } on FirebaseAuthException catch (e) {
      print(e);
      // Utils.showSnackBar(e.message);
    }
    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) {
      return const CustomBottomNavigationBar();
    }), (route) => false);
  }

  @override
  void dispose() {
    emailController.dispose();
    passWordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exit(0);
      },
      child: Scaffold(
        backgroundColor: CustomColor.scaffoldColor,
        body: Center(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 150,
                ),
                CustomTextFormField(
                  hintText: 'Enter your e-mail',
                  // errorText: 'Enter correct email',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return ('Enter your email');
                    }
//expression for email validation
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return ("please enter a valid email");
                    }
                    return null;
                  },
                  onsaved: (value) {
                    emailController.text = value!;
                  },
                  textInputType: TextInputType.emailAddress,
                  controller: emailController,
                  icon: const Icon(
                    Icons.email,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextFormField(
                  hintText: 'Enter your password',
                  //errorText: 'Enter correct password ',

                  validator: (value) {
                    // RegExp regex = new RegExp(r'^.{6,}$');
                    if (value!.isEmpty) {
                      return ("Password is required for login");
                    }
                    // if (!regex.hasMatch(value)) {
                    //   return ("Please Enter Valid Password");
                    // }
                  },
                  onsaved: (value) {
                    passWordController.text = value!;
                  },

                  textInputType: TextInputType.text,
                  controller: passWordController,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    child: Icon(
                      isHidden ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  isPass: isHidden,
                  icon: const Icon(
                    Icons.lock,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      signIn();
                    }
                  },
                  child: const Text(
                    'Login',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Not a Member? ',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          (MaterialPageRoute(
                            builder: ((context) => const SignUpScreen()),
                          )),
                        );
                      },
                      child: const Text(
                        'Register here',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                  child: Text(
                    'or',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const PhoneVerification();
                      },
                    ));
                  },
                  child: const Text('Sign with OTP'),
                ),
              const  SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    FirebaseAuthMethods(auth: FirebaseAuth.instance).signwithGoogle(context);
                  },
                  child: const Text(
                    'Sign with Google',
                  ),
                ),
               const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child:const Text(
                    'Sign with facebook',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

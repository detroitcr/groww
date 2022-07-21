// ignore_for_file: use_build_context_synchronously
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:growwui/AUTHENTICATION/Services/firebase_auth_methods.dart';
import 'package:growwui/AUTHENTICATION/WIDGETS/LoginScreenWidgets/phone_verification_button.dart';
import 'package:growwui/AUTHENTICATION/WIDGETS/custom_text_field.dart';
import 'package:provider/provider.dart';

import '../../Utils/Widgets/Common/custom_bot_bar.dart';
import '../WIDGETS/LoginScreenWidgets/CommonWidgets/custom_chip_button.dart';
import '../WIDGETS/sign_up_widget.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login-email-password';
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

  void loginUser() {
    context.read<FirebaseAuthMethods>().loginWithEmail(
          email: emailController.text,
          password: passWordController.text,
          context: context,
        );
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
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: Center(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const SignUpWidget(),
                  const SizedBox(
                    height: 50,
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
                        loginUser();
                        Navigator.pushAndRemoveUntil(context,
                            MaterialPageRoute(builder: (_) {
                          return const CustomBottomNavigationBar();
                        }), (route) => false);
                      }
                      // if (formKey.currentState!.validate()) {
                      //   signIn();
                      // }
                    },
                    child: const Text(
                      'Login',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Center(
                    child: Text(
                      'or',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const PhoneVerificationButton(),
                  const SizedBox(
                    height: 20,
                  ),
                  const CustomChipButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}






























  // Future signIn() async {
  //   showDialog(
  //     context: context,
  //     barrierDismissible: false,
  //     builder: (context) => const Center(
  //       child: CircularProgressIndicator(),
  //     ),
  //   );
  //   try {
  //     await FirebaseAuth.instance.signInWithEmailAndPassword(
  //         email: emailController.text.trim(),
  //         password: passWordController.text.trim());
  //   } on FirebaseAuthException catch (e) {
  //     if (kDebugMode) {
  //       print(e);
  //     }
  //     // Utils.showSnackBar(e.message);
  //   }

  // }

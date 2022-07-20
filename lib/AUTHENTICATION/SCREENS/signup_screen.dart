import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:growwui/AUTHENTICATION/SCREENS/login_screen.dart';
import 'package:growwui/AUTHENTICATION/Services/firebase_auth_methods.dart';
import 'package:growwui/AUTHENTICATION/WIDGETS/custom_text_field.dart';
import 'package:provider/provider.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName ='/signup-email-password';
  const SignUpScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  final TextEditingController _emailSignUpController = TextEditingController();
  final TextEditingController _passWordSignUpController =
      TextEditingController();

  bool _isHidden = true;
  //late SignUpAuthentication signUpAuthentication;

//  @override
//   void initState() {
//       signUpAuthentication = SignUpAuthentication(FirebaseAuth.instance);
//     super.initState();
//   }
  @override
  void dispose() {
    _emailSignUpController.dispose();
    _passWordSignUpController.dispose();

    super.dispose();
  }

  void signUp() {
   context.read<FirebaseAuthMethods>().
    signUpWithEmail(
      email: _emailSignUpController.text,
      password: _passWordSignUpController.text,
      context: context,
      
    );
  }
 
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(
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
                _emailSignUpController.text = value!;
              },
              hintText: 'Enter your E-mail',
              textInputType: TextInputType.emailAddress,
              controller: _emailSignUpController,
              icon: const Icon(
                Icons.email,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFormField(
              hintText: 'Enter Your PassWord',
              textInputType: TextInputType.text,
              controller: _passWordSignUpController,
              isPass: _isHidden,
              //  validator: (value) {},
              icon: const Icon(
                Icons.lock,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    _isHidden = !_isHidden;
                  });
                },
                child: Icon(
                  _isHidden ? Icons.visibility : Icons.visibility_off,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: signUp,
              child: const Text('Register'),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already registered go to ? ',
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginScreen()));
                  },
                  child: const Text(
                    'Login Page',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

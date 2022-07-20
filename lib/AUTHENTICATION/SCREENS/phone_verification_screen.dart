import 'package:flutter/material.dart';
import 'package:growwui/AUTHENTICATION/Services/firebase_auth_methods.dart';
import 'package:growwui/AUTHENTICATION/WIDGETS/custom_text_field.dart';
import 'package:growwui/Utils/Widgets/Common/custom_bot_bar.dart';
import 'package:provider/provider.dart';

class PhoneVerification extends StatefulWidget {
  static String routeName = '/phone';
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  void phoneSignIn() {
    context
        .read<FirebaseAuthMethods>()
        .phoneSignIn(context, _phoneController.text);
    // FirebaseAuthMethods(auth:FirebaseAuth.instance).phoneSignIn(context, _phoneController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          CustomTextFormField(
            controller: _phoneController,
            hintText: 'Enter mobile number',
            textInputType: TextInputType.emailAddress,
            suffixIcon: const Icon(
              Icons.phone,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              context
                  .read<FirebaseAuthMethods>()
                  .phoneSignIn(context, _phoneController.text);
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: ((context) =>
                          const CustomBottomNavigationBar())),
                  (route) => false);
            },
            child: const Text(
              'Send',
            ),
          )
        ],
      ),
    );
  }
}

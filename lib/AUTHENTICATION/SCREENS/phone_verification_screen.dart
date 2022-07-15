import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:growwui/AUTHENTICATION/Services/firebase_auth_methods.dart';
import 'package:growwui/AUTHENTICATION/WIDGETS/custom_text_field.dart';

class PhoneVerification extends StatefulWidget {
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

void phoneSignIn(){
  FirebaseAuthMethods(auth:FirebaseAuth.instance).phoneSignIn(context, _phoneController.text);
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 80),
          CustomTextFormField(
            controller: _phoneController,
            hintText: 'Enter mobile number',
            textInputType: TextInputType.emailAddress,
            suffixIcon: Icon(Icons.phone),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: phoneSignIn,
            child: Text('Send'),
          )
        ],
      ),
    );
  }
}

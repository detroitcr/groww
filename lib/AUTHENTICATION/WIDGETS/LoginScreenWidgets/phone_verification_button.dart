


import 'package:flutter/material.dart';

import '../../SCREENS/phone_verification_screen.dart';

class PhoneVerificationButton extends StatefulWidget {
 const PhoneVerificationButton({Key? key}) : super(key: key);

  @override
  State<PhoneVerificationButton> createState() => _PhoneVerificationButtonState();
}

class _PhoneVerificationButtonState extends State<PhoneVerificationButton> {
  @override
  Widget build(BuildContext context) {
    return  TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const PhoneVerification();
                      },
                    ));
                  },
                  child: const Text('Sign with OTP'),
                );
  }
}
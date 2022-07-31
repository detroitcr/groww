import 'package:flutter/material.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';

class OTPSCREEN extends StatefulWidget {
  final VoidCallback onPressed;
  final TextEditingController codeController;
  const OTPSCREEN({
    Key? key,
    required this.onPressed,
    required this.codeController,
  }) : super(key: key);

  @override
  State<OTPSCREEN> createState() => _OTPSCREENState();
}

class _OTPSCREENState extends State<OTPSCREEN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Center(child: Text('Please Enter Otp')),
          const SizedBox(
            height: 10,
          ),
          Column(
            children: const [
              Text('If you entered wrong number'),
              SizedBox(
                width: 10,
              ),
              Text('Go to Enter Mobile Screen')
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          PinCodeTextField(
            controller: widget.codeController,
            pinBoxHeight: 40,
            pinBoxWidth: 50,
            maxLength: 6,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: widget.onPressed,
            child: const Text(
              'Send',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Resend OTP',
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

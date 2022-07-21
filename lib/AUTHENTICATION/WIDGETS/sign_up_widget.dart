import 'package:flutter/material.dart';

import '../SCREENS/signup_screen.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

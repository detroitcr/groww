import 'package:flutter/material.dart';

import '../anomanously_button.dart';
import '../facebook_sign_button.dart';
import '../google_sign_button.dart';

class CustomChipButton extends StatelessWidget {
  const CustomChipButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        GoogleSignButton(),
        SizedBox(
          height: 10,
        ),
        FacebookSignButton(),
        SizedBox(
          height: 10,
        ),
        AnomanouslyButton(),
      ],
    );
  }
}

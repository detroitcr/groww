import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../Utils/Static/Assets/assets.dart';
import '../../Services/firebase_auth_methods.dart';

class GoogleSignButton extends StatefulWidget {
  const GoogleSignButton({Key? key}) : super(key: key);

  @override
  State<GoogleSignButton> createState() => _GoogleSignButtonState();
}

class _GoogleSignButtonState extends State<GoogleSignButton> {
  @override
  Widget build(BuildContext context) {
    return 
    
 GestureDetector(
          onTap: () {
              context.read<FirebaseAuthMethods>().signwithGoogle(context);
          },
          child: Chip(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            side: BorderSide(color: Colors.grey.shade300, width: 1),
            backgroundColor: Colors.white,
            //    padding: EdgeInsets.all(4),
            label: const Image(
              //fit: BoxFit.fill,
              image: AssetImage(Assets.google), height: 30, width: 30,
            ),
          ),
        );
  }
}






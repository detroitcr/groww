import 'package:flutter/material.dart';
import 'package:growwui/AUTHENTICATION/Services/firebase_auth_methods.dart';
import 'package:provider/provider.dart';

import '../../../Utils/Static/Assets/assets.dart';

class FacebookSignButton extends StatefulWidget {
const  FacebookSignButton({Key? key}) : super(key: key);

  @override
  State<FacebookSignButton> createState() => _FacebookSignButtonState();
}

class _FacebookSignButtonState extends State<FacebookSignButton> {
  @override
  Widget build(BuildContext context) {
    return 
 GestureDetector(
          onTap: () {
             context.read<FirebaseAuthMethods>().signInWithFacebook(context);
          },
          child: Chip(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8),
            side: BorderSide(color: Colors.grey.shade300, width: 1),
            backgroundColor: Colors.white,
            //    padding: EdgeInsets.all(4),
            label: const Image(
              //fit: BoxFit.fill,
              image: AssetImage(Assets.fb), height: 30, width: 30,
            ),
          ),
        );
   
  }
}








 









import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/custom_appbar_widget.dart';

class CalculateScreen extends StatelessWidget {
  const CalculateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.scaffoldColor,
      appBar: const CustomAppBar(),
      body: Column(
        children:const [
          Center(
            child: Text(
              'Welcome Calculate Screen',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
 
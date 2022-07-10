import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/PROFILE%20SCREEN%20WIDGETS/profile_app_bar.dart';
import 'package:growwui/Utils/Widgets/PROFILE%20SCREEN%20WIDGETS/profile_first_row_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.scaffoldColor,
        appBar: const ProfileScreenAppBar(),
        body: Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            ProfileFirstRowWidget(),
          ],
        ),
      ),
    );
  }
}

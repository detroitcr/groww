import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/PROFILE%20SCREEN%20WIDGETS/profile_app_bar.dart';
import 'package:growwui/Utils/Widgets/PROFILE%20SCREEN%20WIDGETS/profile_first_row_widget.dart';
import 'package:growwui/Utils/Widgets/PROFILE%20SCREEN%20WIDGETS/profile_listtile.dart';
import 'package:growwui/Utils/Widgets/PROFILE%20SCREEN%20WIDGETS/profile_second_row_widget.dart';
import 'package:growwui/Utils/Widgets/PROFILE%20SCREEN%20WIDGETS/profile_tile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.scaffoldColor,
        appBar: const ProfileScreenAppBar(),
        body: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            ProfileFirstRowWidget(),
            SizedBox(height: 10,),
            Divider(
              height: 10,
              color: CustomColor.dividerColor,
            ),
            ProfileSecondRowWidget(),
            SizedBox(height: 10,),
            ProfileListTile(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/PROFILE%20SCREEN%20WIDGETS/profile_app_bar.dart';


import '../../../Utils/Widgets/PROFILE SCREEN WIDGETS/PROFILE SCREEN LIST/profile_first_row_widget.dart';
import '../../../Utils/Widgets/PROFILE SCREEN WIDGETS/PROFILE SCREEN LIST/profile_listtile.dart';
import '../../../Utils/Widgets/PROFILE SCREEN WIDGETS/PROFILE SCREEN LIST/profile_second_row_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: CustomColor.scaffoldColor,
        appBar: const ProfileScreenAppBar(),
        body: ListView(
          children:const  [
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

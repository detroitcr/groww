import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class ProfileScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ProfileScreenAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColor.scaffoldColor,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            color: CustomColor.profileScreenIconBarColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notification_add,
            color: CustomColor.profileScreenIconBarColor,
          ),
        ),
      ],
    );
  }

  @override
  
  
  Size get preferredSize => const Size.fromHeight(60);
}
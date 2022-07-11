import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class ProfileTileCard extends StatelessWidget {
  final String text;
  final String subText;
  final Widget headIcon;
  const ProfileTileCard({
    Key? key,
    required this.text,
    required this.subText,
    required this.headIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: CustomColor.profileRowIconColor,
            child: headIcon,
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                  color: CustomColor.textColor,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                subText,
                style: TextStyle(
                  color: CustomColor.profileextraTextColor,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

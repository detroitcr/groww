import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class ProfileTileCard extends StatelessWidget {
  final String text;
  final String subText;
  final Widget headIcon;
 final bool showIcon;
 
  const ProfileTileCard({
    Key? key,
    required this.text,
    required this.subText,
    required this.headIcon,
    this.showIcon = false,
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
            crossAxisAlignment: CrossAxisAlignment.start,
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
                style: const TextStyle(
                  color: CustomColor.profileextraTextColor,
                ),
              )
            ],
          ),
         if(showIcon) Chip(
          visualDensity: VisualDensity.compact,
            backgroundColor: CustomColor.profilegreenIconColor,
            label: Row(
              children:const  [
                CircleAvatar(
                  backgroundColor: CustomColor.profileChipColor,
                radius: 10,
                  child: Icon(
                    Icons.call_sharp,
                    size: 18,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(width: 5,),
                Text(
                  'INVITE',
                  style: TextStyle(color: CustomColor.profileChipColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

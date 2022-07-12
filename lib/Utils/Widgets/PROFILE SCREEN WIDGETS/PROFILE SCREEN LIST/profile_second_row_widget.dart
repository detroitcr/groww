


import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class ProfileSecondRowWidget extends StatelessWidget {
  const ProfileSecondRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[

          Row(
            children: [
             const CircleAvatar(
                backgroundColor: CustomColor.profileRowIconColor,
                child: Icon(
                  Icons.wallet,
                  size: 30,
                ),
              ),
              const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:const [
              Text(
                '\$96',
                style: TextStyle(
                    color: CustomColor.textColor, fontSize: 28),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Groww Balance',
                style: TextStyle(
                    color: CustomColor.profileextraTextColor),
              )
            ],
          ),
            ],
          ),
         
          Chip(
            backgroundColor: CustomColor.profilegreenIconColor,
            label: Row(
              children: const [
                Icon(
                  Icons.add,
                  color: CustomColor.profileChipColor,
                ),
                Text(
                  'Add Money',
                  style: TextStyle(
                      color: CustomColor.profileChipColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

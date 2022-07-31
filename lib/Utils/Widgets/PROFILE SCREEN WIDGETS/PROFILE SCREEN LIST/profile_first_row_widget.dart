import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class ProfileFirstRowWidget extends StatelessWidget {
  const ProfileFirstRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         
          Row(
            children:   [
              const  CircleAvatar(
            backgroundColor: CustomColor.profileCircleColor,
          ),
       const    SizedBox(
            width: 10,
          ),
              Column(
                children:const  [
                  Text(
                    'Vikas Kumar',
                    style:
                        TextStyle(color: CustomColor.textColor, fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Account Details',
                    style: TextStyle(
                      color: CustomColor.profileextraTextColor,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_circle_right_sharp,
              color: CustomColor.profilebelowIconColor,
            ),
          )
        ],
      ),
    );
  }
}
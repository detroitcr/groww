// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:growwui/Utils/Static/assets.dart';
// import 'package:growwui/Utils/Static/custom_color.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   CustomAppBar({
//     Key? key,
//     required this.title,
//   }) : super(key: key);

//   @override
//   Size get preferredSize => const Size.fromHeight(60);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         decoration: BoxDecoration(
//           border: Border.all(
//             color: Colors.grey,
//           ),
//           color: CustomColor.scaffoldColor,
//           borderRadius: BorderRadius.circular(50),
//         ),
//         padding: EdgeInsets.all(8),
//         height: 60,
//         width: 120,
//         child: Stack(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Image.asset(
//                   Assets.logo,
//                   height: 100,
//                   width: 40,
//                 ),

//                 // Expanded(
//                 //   child: Column(
//                 //     children: [
//                 //       IconButton(
//                 //         onPressed: () {},
//                 //         icon: Icon(
//                 //           Icons.search,
//                 //           color: CustomColor.appBarText,
//                 //         ),
//                 //       ),
//                 //       Text(
//                 //         'Search Groww',
//                 //         style: TextStyle(
//                 //           color: CustomColor.appBarText,
//                 //         ),
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: const Icon(
//                     Icons.person,
//                     color: CustomColor.iconColor,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/Assets/assets.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/View/Screens/Profile/profile_screen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          Assets.logo,
          height: 10,
        ),
      ),
      backgroundColor: CustomColor.scaffoldColor,
      title: const Text(
        'Groww',
        style: TextStyle(
          color: CustomColor.textColor,
        ),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false,
      actions: [
        CircleAvatar(
          radius: 20,
          child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ProfileScreen();
              }));
            },
            icon: const Icon(
              Icons.person,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

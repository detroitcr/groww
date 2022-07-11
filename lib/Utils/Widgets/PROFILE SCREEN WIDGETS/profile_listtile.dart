import 'package:flutter/material.dart';
import 'package:growwui/Utils/Widgets/PROFILE%20SCREEN%20WIDGETS/profile_tile_card.dart';

import '../../../Models/ProfileScreenModels/profile_items_model.dart';

class ProfileListTile extends StatelessWidget {
  const ProfileListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 400,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: profileItems.length,
              itemBuilder: (context, index) {
                final data = profileItems[index];
                return GestureDetector(
                  onTap: (){},
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ProfileTileCard(
                      text: data.text,
                      subText: data.subText,
                      headIcon: data.headicon,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class CryptoCard extends StatelessWidget {
  final String image;
  final String name;
  const CryptoCard({
    Key? key,
    required this.name,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        color: CustomColor.cardBgColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 70,
            width: 50,
            child: Image.asset(
              image,
              height: 50,
            ),
          ),
         const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(
              color: CustomColor.textColor,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class MarketTypeCardWidget extends StatelessWidget {
  final String name;
  final Icon marketIcon;
  const MarketTypeCardWidget({
    Key? key,
    required this.name,
    required this.marketIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: CustomColor.cardBgColor,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 80,
        width: 140,
        child: Row(
          children: [
            Expanded(
              child: marketIcon,
            ),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  color: CustomColor.textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

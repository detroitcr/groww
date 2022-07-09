import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class TopGainerCompanyCustomCard extends StatelessWidget {
  final String name;
  final int numbers;
  final int belowNumbers;
  final String image;
  const TopGainerCompanyCustomCard({
    Key? key,
    required this.name,
    required this.numbers,
    required this.belowNumbers,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // ignore: sort_child_properties_last
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage(image),
                height: 20,
                width: 20,
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
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              numbers.toString(),
              style: const TextStyle(
                color: CustomColor.textColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              belowNumbers.toString(),
              style: const TextStyle(
                color: CustomColor.upDownColor,
              ),
            ),
          ],
        ),
        height: 600,
        width: 300,
        color: CustomColor.cardBgColor,
      ),
    );
  }
}

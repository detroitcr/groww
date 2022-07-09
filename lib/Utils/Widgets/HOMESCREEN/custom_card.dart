import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class CustomCard extends StatelessWidget {
  final String name;
  final int numbers;
  final int belowNumbers;
  const CustomCard({
    Key? key,
    required this.name,
    required this.numbers,
    required this.belowNumbers,
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
     const  SizedBox(
              height: 20,
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
              height: 10,
            ),
            Text(
              belowNumbers.toString(),
              style: const TextStyle(
                color: CustomColor.upDownColor,
              ),
            ),
          ],
        ),
        height: 140,
        width: 140,
        color: CustomColor.cardBgColor,
      ),
    );
  }
}

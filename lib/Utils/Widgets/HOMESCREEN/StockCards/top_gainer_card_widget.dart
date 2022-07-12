import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class TopGainerCompanyCustomCard extends StatelessWidget {
  final String name;
  final String numbers;
  final String belowNumbers;
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
      borderRadius: BorderRadius.circular(12),
      child: Container(
        // ignore: sort_child_properties_last
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    padding:const  EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage(image),
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:30),
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right:22.0),
              child: Column(
                
                children: [
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
            ),
          ],
        ),
        height: 150,
        width: 125,
        color: CustomColor.cardBgColor,
      ),
    );
  }
}

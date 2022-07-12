import 'package:flutter/material.dart';
import 'package:growwui/Models/Crypto/crypto_model.dart';
import 'package:growwui/Utils/Widgets/CryptoScreenWidgets/CryptoCards/crypto_firstrow_card.dart';

class CryptoFirstRowList extends StatelessWidget {
  const CryptoFirstRowList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
              itemCount: cryptoDetailList.length,
              itemBuilder: (context, index) {
                final cryptoData = cryptoDetailList[index];
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CryptoCard(
                      name: cryptoData.heading,
                      image: cryptoData.image,
                    ),
                  ),
                );
              }),
        )
      ],
    ));
  }
}

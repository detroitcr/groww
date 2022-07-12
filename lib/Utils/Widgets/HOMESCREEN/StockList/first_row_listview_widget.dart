import 'package:flutter/cupertino.dart';

import 'package:growwui/Utils/Widgets/HOMESCREEN/StockCards/custom_card.dart';

import '../../../../Models/Stocks/market_type_model.dart';

class FirstRowCardList extends StatelessWidget {
  const FirstRowCardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: marketData.length,
              itemBuilder: (context, index) {
                final data = marketData[index];
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CustomCard(
                      name: data.name,
                      numbers: data.numbers,
                      belowNumbers: data.belowNumbers,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      )
      ,
    );
  }
}

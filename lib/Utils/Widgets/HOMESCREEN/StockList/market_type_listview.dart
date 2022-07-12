import 'package:flutter/material.dart';
import 'package:growwui/Models/Stocks/market_type_models.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/StockCards/market_types_card.dart';


class MarketTypeListWidget extends StatelessWidget {
  const MarketTypeListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: marketType.length,
              itemBuilder: (context, index) {
                final data = marketType[index];
                return GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MarketTypeCardWidget(
                      name: data.marketName,
                      marketIcon: data.marketIcon,
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

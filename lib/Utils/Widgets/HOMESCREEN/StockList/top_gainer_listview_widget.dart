import 'package:flutter/material.dart';
import 'package:growwui/Models/Stocks/top_gainer_stock_model.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/StockCards/top_gainer_card_widget.dart';

import 'package:growwui/View/Screens/Stock/stock_detail_screen.dart';

class TopGainerListViewWidget extends StatelessWidget {
  const TopGainerListViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: gainersCompany.length,
              itemBuilder: (context, index) {
                final data = gainersCompany[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return StockDetailScreen(
                        title: data.name,
                        image: data.image,
                      );
                    }));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TopGainerCompanyCustomCard(
                      image: data.image,
                      name: data.name,
                      numbers: data.currentPrice,
                      belowNumbers: data.greenPrice,
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

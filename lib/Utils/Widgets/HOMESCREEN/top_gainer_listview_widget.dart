import 'package:flutter/cupertino.dart';
import 'package:growwui/Models/Stocks/top_gainer_stock_model.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/top_gainer_card_widget.dart';



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
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TopGainerCompanyCustomCard(
                      image: data.image,
                      name: data.name,
                      numbers: data.currentPrice,
                      belowNumbers: data.greenPrice ,
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

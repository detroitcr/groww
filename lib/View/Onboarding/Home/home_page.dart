import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/all_stocks_market.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/custom_appbar_widget.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/first_row_listview_widget.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/market_type_listview.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/market_types_card.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/top_gainer_listview_widget.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/top_gainer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(title: 'groww'),
        backgroundColor: CustomColor.scaffoldColor,
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const MarketStockWidget(),
            const FirstRowCardList(),
            const SizedBox(
              height: 20,
            ),
            const TopGainerMarket(),
            const SizedBox(
              height: 20,
            ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(12),
            //   child: Container(
            //     height: 150,
            //     width: 125,
            //     color: CustomColor.cardBgColor,
            //   ),
            // ),
            const TopGainerListViewWidget(),
            const SizedBox(
              height: 20,
            ),
            MarketTypeListWidget()
            // MarketTypeCardWidget(),
          ],
        ),
      ),
    );
  }
}


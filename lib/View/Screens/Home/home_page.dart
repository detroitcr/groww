import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/all_stocks_market.dart';
import 'package:growwui/Utils/Widgets/Common/custom_appbar_widget.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/StockList/first_row_listview_widget.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/StockList/market_type_listview.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/StockList/top_gainer_listview_widget.dart';
import 'package:growwui/Utils/Widgets/HOMESCREEN/top_gainer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        appBar: const CustomAppBar(),
//CustomAppBar(title: 'groww'),
        backgroundColor: CustomColor.scaffoldColor,
        body:
        //screens[currentIndex],
         Column(
          children: const [
            SizedBox(
              height: 20,
            ),
            MarketStockWidget(),
            FirstRowCardList(),
            SizedBox(
              height: 20,
            ),
            TopGainerMarket(),
            SizedBox(
              height: 20,
            ),

            TopGainerListViewWidget(),
            SizedBox(
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

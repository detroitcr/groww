import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/all_stocks_market.dart';
import 'package:growwui/Utils/Widgets/custom_appbar_widget.dart';
import 'package:growwui/Utils/Widgets/first_row_listview_widget.dart';
import 'package:growwui/Utils/Widgets/top_gainer_listview_widget.dart';
import 'package:growwui/Utils/Widgets/top_gainer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: CustomAppBar(title: 'groww'),
          backgroundColor: CustomColor.scaffoldColor,
          body: Column(
            children:  [
               SizedBox(
                height: 20,
              ),
               MarketStockWidget(),
               FirstRowCardList(),
               SizedBox(
                height: 20,
              ),
              TopGainerMarket(),
              SizedBox(height: 20,),
              TopGainerListViewWidget()

            ],
          )),
    );
  }
}


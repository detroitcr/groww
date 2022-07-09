import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:growwui/Utils/Static/custom_color.dart';
import 'package:growwui/Utils/Widgets/all_stocks_market.dart';
import 'package:growwui/Utils/Widgets/first_row_listview_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          backgroundColor: CustomColor.scaffoldColor,
          body: Column(
            children:const  [
              SizedBox(
                height: 20,
              ),
              MarketStockWidget(),
              FirstRowCardList(),
            ],
          )),
    );
  }
}


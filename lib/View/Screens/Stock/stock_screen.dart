

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:growwui/Utils/Static/custom_color.dart';
// import 'package:growwui/Utils/Widgets/HOMESCREEN/all_stocks_market.dart';
// import 'package:growwui/Utils/Widgets/HOMESCREEN/custom_appbar_widget.dart';
// import 'package:growwui/Utils/Widgets/HOMESCREEN/first_row_listview_widget.dart';
// import 'package:growwui/Utils/Widgets/HOMESCREEN/market_type_listview.dart';
// import 'package:growwui/Utils/Widgets/HOMESCREEN/top_gainer_widget.dart';

// import '../../../Utils/Widgets/HOMESCREEN/top_gainer_listview_widget.dart';

// class StockScreen extends StatefulWidget {
//   const StockScreen({Key? key}) : super(key: key);

//   @override
//   State<StockScreen> createState() => _StockScreenState();
// }

// class _StockScreenState extends State<StockScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: const CustomAppBar(),
//       backgroundColor: CustomColor.scaffoldColor,
// body: Column(
//           children: const [
//             SizedBox(
//               height: 20,
//             ),
//             MarketStockWidget(),
//             FirstRowCardList(),
//             SizedBox(
//               height: 20,
//             ),
//             TopGainerMarket(),
//             SizedBox(
//               height: 20,
//             ),

//             TopGainerListViewWidget(),
//             SizedBox(
//               height: 20,
//             ),
//             MarketTypeListWidget()
//             // MarketTypeCardWidget(),
//           ],
//         ),
//     );
    
//   }
// }
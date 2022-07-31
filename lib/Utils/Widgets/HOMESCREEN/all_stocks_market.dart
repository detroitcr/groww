import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class MarketStockWidget extends StatelessWidget {
  const MarketStockWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:const [
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: Text(
            'Market Indices',
            style: TextStyle(color: CustomColor.textColor),
          ),
        ),
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: Text(
            'All Stocks',
            style: TextStyle(
              color: CustomColor.upDownColor,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class TopGainerMarket extends StatelessWidget {
  const TopGainerMarket({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const  [
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: _UnderTopGainerWidget(),
        ),
         Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'See more',
            style: TextStyle(color: CustomColor.filterColor),
          ),
        ),
      ],
    );
  }
}

class _UnderTopGainerWidget extends StatelessWidget {
  const _UnderTopGainerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Top gainers',
          style: TextStyle(
            color: CustomColor.textColor,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'NIFTY 100',
          style: TextStyle(
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

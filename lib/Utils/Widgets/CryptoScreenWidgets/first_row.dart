import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class CryptoFirstRow extends StatelessWidget {
  const CryptoFirstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            'Market',
            style: TextStyle(
              color: CustomColor.textColor,
            ),
          ),
          //  i want to small size of chip?
          Chip(
            //  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //   visualDensity: VisualDensity(horizontal: 0.0, vertical: -2),
            //   labelPadding: EdgeInsets.fromLTRB(0, -6, 0, -6),
            padding: EdgeInsets.only(right:2),
            backgroundColor: CustomColor.profileChipColor,
            label:
             Text(
              'Crypto List',
              style: TextStyle(
                color: CustomColor.chipTextColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:growwui/Utils/Static/custom_color.dart';

class MarketType {
  final String marketName;
  final Icon marketIcon;
  MarketType({
    required this.marketName,
    required this.marketIcon,
  });
}

List<MarketType> marketType = [
  MarketType(
    marketName: 'F&O',
    marketIcon: const Icon(
      Icons.currency_exchange,
      color: CustomColor.textColor,
    ),
  ),
  MarketType(
    marketName: 'Intraday',
    marketIcon: const Icon(
      Icons.currency_bitcoin,
      color: CustomColor.textColor,
    ),
  ),
  MarketType(
    marketName: 'SVG',
    marketIcon: const Icon(
      Icons.currency_exchange_rounded,
      color: CustomColor.textColor,
    ),
  ),
  MarketType(
    marketName: 'IPO',
    marketIcon: const Icon(
      Icons.flag,
      color: CustomColor.textColor,
    ),
  ),
];

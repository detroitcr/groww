import 'package:flutter/material.dart';

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
    ),
  ),
  MarketType(
    marketName: 'Intraday',
    marketIcon: const Icon(
      Icons.currency_bitcoin,
    ),
  ),
  MarketType(
    marketName: 'SVG',
    marketIcon: const Icon(
      Icons.currency_exchange_rounded,
    ),
  )
];

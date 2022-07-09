class MarketType {
  final String name;
  final int numbers;
  final int belowNumbers;
  MarketType({
    required this.name,
    required this.belowNumbers,
    required this.numbers,
  });
}

List<MarketType> marketData = [
  MarketType(
    name: 'Nifty 50',
    belowNumbers: 16220,
    numbers: 87,
  ),
  MarketType(
    name: 'Sensex',
    belowNumbers: 50000,
    numbers: 68,
  ),
  MarketType(
    name: 'Nifty Bank',
    belowNumbers: 16220,
    numbers: 70,
  ),
];

class TopGainersCompany {
  final String name;
  final String image;
  final String currentPrice;
  final String greenPrice;
  TopGainersCompany({
    required this.name,
    required this.image,
    required this.greenPrice,
    required this.currentPrice,
  });
}

List<TopGainersCompany> gainersCompany = [
  TopGainersCompany(
    name: 'Reliance',
    image: 'assets/images/reliance.jpg',
    greenPrice: '\$ 50' ,
    currentPrice: '\$ 5000',
  ),
  TopGainersCompany(
    name: 'Adani',
    image: 'assets/images/adani.jpg',
    greenPrice: '\$ 90'  ,
    currentPrice: '\$6000',
  ),
  TopGainersCompany(
    name: 'Biogen',
    image: 'assets/images/Biogen.png',
    greenPrice: '\$ 5' ,
    currentPrice: '\$ 50',
  ),
  TopGainersCompany(
    name: 'Tata',
    image: 'assets/images/Tata.png',
    greenPrice: '\$ 50' ,
    currentPrice: '\$ 4000',
  ),
  
  TopGainersCompany(
    name: 'ONGC',
    image: 'assets/images/ongc.jpg',
    greenPrice: '\$ 50' ,
    currentPrice: '\$ 400',
  ),
];

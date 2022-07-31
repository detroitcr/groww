class CryptoModel {
  final String heading;
  final String image;
  final String details;
  CryptoModel({
    required this.heading,
    required this.details,
    required this.image,
  });
}

List<CryptoModel> cryptoDetailList = [
  CryptoModel(
    heading: 'Bitcoin',
    details: 'start',
    image: 'assets/images/bitcoin.png',
  ),
  CryptoModel(
    heading: 'PolkaDot',
    details: 'start',
    image: 'assets/images/dot.png',
  ),
  CryptoModel(
    heading: 'Ethereum',
    details: 'start',
    image: 'assets/images/ethereum.png',
  ),
  CryptoModel(
    heading: 'ApeNft',
    details: 'start',
    image: 'assets/images/apenft.png',
  ),
];

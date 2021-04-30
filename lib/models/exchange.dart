class ExchangeModel {
  ExchangeModel({this.text1, this.text2, this.value, this.image1, this.image2});

  String text1, text2, image1, image2;
  double value;
}

List<ExchangeModel> exchange = [
  ExchangeModel(
    image1: 'assets/images/aed.png',
    image2: 'assets/images/ngn.png',
    text1: 'AED',
    text2: 'NGN',
    value: 0.00345,
  ),
  ExchangeModel(
    image1: 'assets/images/aed.png',
    image2: 'assets/images/usd.png',
    text1: 'AED',
    text2: 'USD',
    value: 534.00,
  ),
  ExchangeModel(
    image1: 'assets/images/aed.png',
    image2: 'assets/images/ghc.png',
    text1: 'AED',
    text2: 'GHC',
    value: 480.00,
  ),
  ExchangeModel(
    image1: 'assets/images/aed.png',
    image2: 'assets/images/cad.png',
    text1: 'AED',
    text2: 'CAD',
    value: 314.00,
  ),
  ExchangeModel(
    image1: 'assets/images/ngn.png',
    image2: 'assets/images/ghc.png',
    text1: 'NGN',
    text2: 'GHC',
    value: 121.00,
  ),
  ExchangeModel(
    image1: 'assets/images/ngn.png',
    image2: 'assets/images/usd.png',
    text1: 'NGN',
    text2: 'USD',
    value: 54.00,
  ),
];

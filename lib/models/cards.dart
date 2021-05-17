class Cards {
  Cards({this.flag, this.image, this.type});

  String type, image, flag;
}

List<Cards> cardList = [
  Cards(
      type: 'Virtual Card',
      flag: 'assets/images/ghc.png',
      image: 'assets/images/ghana_card.png'),
  Cards(
      type: 'Virtual Card',
      flag: 'assets/images/cad.png',
      image: 'assets/images/canada_card.png'),
  Cards(
      type: 'Virtual Card',
      flag: 'assets/images/usd.png',
      image: 'assets/images/usa_card.png'),
];

class CardType {
  CardType({this.type, this.image});

  String type, image;
}

List<CardType> cardTypeList = [
  CardType(type: 'Virtual Card', image: 'assets/images/virtual_card.png'),
  CardType(type: 'Physical Card', image: 'assets/images/physical_card.png')
];

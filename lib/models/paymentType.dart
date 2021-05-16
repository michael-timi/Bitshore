class Payment {
  Payment({this.name, this.image});

  String name, image;
}

List<Payment> paymentList = [
  Payment(
      name: 'Electricity',
      image: 'assets/images/ghana_card.png'),
  Payment(
      name: 'Airtime & Data',
      image: 'assets/images/canada_card.png'),
  Payment(
      name: 'Pay A Bill',
      image: 'assets/images/usa_card.png'),
  Payment(
      name: 'Pay A Bill',
      image: 'assets/images/usa_card.png'),
];

class PaymentType {
  PaymentType({this.type, this.image});

  String type, image;
}

List<PaymentType> paymentTypeList = [
  PaymentType(type: 'Virtual Card', image: 'assets/images/virtual_card.png'),
  PaymentType(type: 'Physical Card', image: 'assets/images/physical_card.png')
];

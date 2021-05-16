class Payment {
  Payment({this.name, this.image});

  String name, image;
}

List<Payment> paymentList = [
  Payment(
      name: 'Electricity',
      image: 'assets/images/light.png'),
  Payment(
      name: 'Airtime & Data',
      image: 'assets/images/smartphone.png'),
  Payment(
      name: 'Pay A Bill',
      image: 'assets/images/invoice.png'),
  Payment(
      name: 'Pay A Bill',
      image: 'assets/images/invoice.png'),
];

class PaymentType {
  PaymentType({this.type, this.image});

  String type, image;
}

List<PaymentType> paymentTypeList = [
  PaymentType(type: 'Virtual Card', image: 'assets/images/virtual_card.png'),
  PaymentType(type: 'Physical Card', image: 'assets/images/physical_card.png')
];

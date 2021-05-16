import 'package:flutter/material.dart';
import 'package:bitshore/models/transferMoney.dart';

class TransferMoney extends StatefulWidget {
  final Transfer transfer;

  TransferMoney({this.transfer});

  @override
  _TransferMoneyState createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [],
      )),
    );
  }
}

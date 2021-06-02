import 'package:bitshore/widgets/addCard.dart';
import 'package:bitshore/widgets/myReusableTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:bitshore/models/transferMoney.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TransferMoney extends StatefulWidget {
  final Transfer transfer;

  TransferMoney({this.transfer});

  @override
  _TransferMoneyState createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  String valueBank, amount, house, phone;
  List bankList = ['Select state', 'Access Bank', 'FCMB', 'GTBank'];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(
            top: size.height * 0.03,
            left: size.height * 0.02,
            right: size.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back, color: Colors.black)),
                  SizedBox(width: size.width * 0.05),
                  Text(
                    'Transfer Money',
                    style: TextStyle(
                        color: Color(0xff343C6B),
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Container(
              height: size.height * 0.15,
              width: size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  AddCardsMenu(
                    name: 'Spending',
                    border: Border.all(color: Color(0xff003FA4), width: 1),
                    cColor: Color(0xffC4C4C4),
                  ),
                  SizedBox(width: size.width * 0.03),
                  AddCardsMenu(name: 'Web-card', cColor: Color(0xffC4C4C4)),
                  SizedBox(width: size.width * 0.03),
                  AddCardsMenu(name: 'Misc', cColor: Color(0xffC4C4C4)),
                  SizedBox(width: size.width * 0.03),
                  AddCardsMenu(name: 'Misc', cColor: Color(0xffC4C4C4)),
                  SizedBox(width: size.width * 0.03),
                  AddCardsMenu(
                    name: 'Beneficiary',
                    cColor: Color(0xffE0E3ED),
                    child: Container(
                      height: size.height * 0.05,
                      width: size.height * 0.05,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0xff003FA4), width: 1)),
                      child: Icon(FontAwesomeIcons.plus,
                          color: Color(0xff003FA4), size: size.width * 0.025),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              'Transfer details',
              style: TextStyle(
                  color: Color(0xff4F4F4F),
                  fontSize: size.width * 0.035,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.03),
            Text(
              'Amount',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.025,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            textField(
              hintText: '45000',
              keyType: TextInputType.number,
              isHiddenPssword: false,
              onChangedValue: (value) {
                amount = value;
              },
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'Bank',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.025,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.only(
                  left: size.height * 0.015, right: size.height * 0.015),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1),
                  color: Color.fromRGBO(243, 246, 250, 1)),
              child: DropdownButton(
                value: valueBank,
                onChanged: (newValue) {
                  setState(() {
                    valueBank = newValue;
                  });
                },
                isExpanded: true,
                underline: SizedBox(),
                items: bankList.map((valueItem) {
                  return DropdownMenuItem(
                      value: valueItem, child: Text(valueItem));
                }).toList(),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              'Account number',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.025,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            textField(
              hintText: '0123456789',
              keyType: TextInputType.number,
              isHiddenPssword: false,
              onChangedValue: (value) {
                phone = value;
              },
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'Transfer note',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: size.width * 0.025,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.01),
            textField(
              hintText: 'House rent',
              keyType: TextInputType.text,
              isHiddenPssword: false,
              onChangedValue: (value) {
                house = value;
              },
            ),
            SizedBox(height: size.height * 0.05),
            InkWell(
              child: Container(
                height: size.height * 0.05,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff003FA4)),
                child: Center(
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              onTap: () {
                _addCardSuccessBottomScreen(context);
              },
            )
          ],
        ),
      )),
    );
  }

  void _addCardSuccessBottomScreen(context) {
    var size = MediaQuery.of(context).size;

    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
                bottomRight: Radius.zero,
                bottomLeft: Radius.zero)),
        builder: (BuildContext bc) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              height: size.height * 0.35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(FontAwesomeIcons.times,
                              color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: size.height * 0.01),
                  Center(
                      child: Column(
                    children: [
                      Container(
                        height: size.height * 0.15,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/done.png'),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                          'Transfer successful',
                          style: TextStyle(
                              color: Color(0xff343C6B),
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
                ],
              ),
            ),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:bitshore/widgets/searchCurrency.dart';
import 'package:bitshore/models/exchange.dart';

class ExchangeDetail extends StatefulWidget {
  final ExchangeModel exchangeModel;

  ExchangeDetail({this.exchangeModel});

  @override
  _ExchangeDetailState createState() => _ExchangeDetailState();
}

class _ExchangeDetailState extends State<ExchangeDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.5,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.only(
                left: size.height * 0.02,
                right: size.height * 0.02,
                top: size.height * 0.03),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  child: Row(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child:
                              Icon(Icons.arrow_back_ios, color: Colors.black)),
                      Spacer(),
                      Text(
                        'Exchange',
                        style: TextStyle(
                            color: Color(0xff343C6B),
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Text(
                        '',
                        style: TextStyle(
                            color: Color(0xff343C6B),
                            fontSize: size.width * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                          color: Color(0xff343C6B),
                          fontSize: size.width * 0.03,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '230,000',
                      style: TextStyle(
                          color: Color(0xff343C6B),
                          fontSize: size.width * 0.03,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  height: size.height * 0.06,
                  padding: EdgeInsets.symmetric(horizontal: size.height * 0.01),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Color(0xffC4C4C4)),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('0.00',
                          style: TextStyle(
                              color: Color(0xff343C6B),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Container(
                              height: size.height * 0.025,
                              width: size.height * 0.03,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage(widget.exchangeModel.image1),
                                  fit: BoxFit.none,
                                ),
                              )),
                          SizedBox(width: size.height * 0.01),
                          Text(widget.exchangeModel.text1,
                              style: TextStyle(
                                  color: Color(0xff343C6B),
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: size.height * 0.01),
                          InkWell(
                            child: Icon(Icons.keyboard_arrow_down),
                            onTap: () {
                              _chooseCurrencyDialog(context);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Center(
                  child: Container(
                      height: size.height * 0.04,
                      width: size.height * 0.04,
                      decoration: BoxDecoration(
                        color: Color(0xffC4C4C4),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/exchange.png'),
                          fit: BoxFit.none,
                        ),
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'To',
                      style: TextStyle(
                          color: Color(0xff343C6B),
                          fontSize: size.width * 0.03,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.01),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: size.height * 0.01),
                  height: size.height * 0.06,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Color(0xffC4C4C4)),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('0.00',
                          style: TextStyle(
                              color: Color(0xff343C6B),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Container(
                              height: size.height * 0.025,
                              width: size.height * 0.03,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage(widget.exchangeModel.image2),
                                  fit: BoxFit.none,
                                ),
                              )),
                          SizedBox(width: size.height * 0.01),
                          Text(widget.exchangeModel.text2,
                              style: TextStyle(
                                  color: Color(0xff343C6B),
                                  fontSize: size.width * 0.04,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(width: size.height * 0.01),
                          InkWell(
                            child: Icon(Icons.keyboard_arrow_down),
                            onTap: () {
                              _chooseCurrencyDialog(context);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                Text(
                  'All transactions attract  flat fee of \$30',
                  style: TextStyle(
                      color: Color(0xff343C6B),
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: size.height * 0.015),
                InkWell(
                  child: Container(
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color(0xff003FA4)),
                    child: Center(
                      child: Text(
                        'Confirm',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(height: size.height * 0.08),
                Text(
                  'Instruction for use:\n'
                  '\n'
                  '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Condimentum lobortis nulla ornare accumsan, semper. Ac habitant amet, lacus tortor fringilla. In lacus ut porta morbi. Maecenas ut gravida molestie tristique odio risus facilisis.\n'
                  '\n'
                  '2. Commodo accumsan, rhoncus risus consequat, ac vel nunc lobortis nulla ornare accumsan, semper. Ac habitant amet',
                  style: TextStyle(
                      color: Color(0xff343C6B),
                      fontSize: size.width * 0.03,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  void _chooseCurrencyDialog(context) {
    showDialog(
        context: context,
        builder: (_) {
          TextEditingController _searchController = new TextEditingController();
          var size = MediaQuery.of(context).size;
          return Dialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 24, top: 24, right: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exchange',
                          style: TextStyle(
                              color: Color(0xff343C6B),
                              fontSize: size.width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.close, color: Colors.black)),
                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: TextFormField(
                      controller: _searchController,
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(color: Colors.black),
                      obscureText: false,
                      maxLines: 1,
                      enabled: true,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          labelText: 'Search currency',
                          labelStyle: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(
                                  fontSize: size.width * 0.035,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff263238)),
                          alignLabelWithHint: true,
                          fillColor: Color.fromRGBO(243, 246, 250, 1),
                          filled: true,
                          errorStyle: Theme.of(context)
                              .textTheme
                              .caption
                              .copyWith(color: Colors.red),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(color: Colors.red)),
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none)),
                    ),
                  ),
                  SizedBox(height: size.height * 0.04),
                  SearchCurrency(
                      text1: 'USD',
                      text2: 'United States Dollar',
                      image: 'assets/images/usd.png'),
                  Divider(),
                  SearchCurrency(
                      text1: 'AED',
                      text2: 'United Arab Emirates dirham',
                      image: 'assets/images/aed.png'),
                  Divider(),
                  SearchCurrency(
                      text1: 'NGN',
                      text2: 'Nigerian Naira',
                      image: 'assets/images/ngn.png'),
                ],
              ),
            ),
          );
        });
  }
}

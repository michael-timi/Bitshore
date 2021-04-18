import 'package:bitshore/widgets/reusableText.dart';
import 'package:bitshore/widgets/myReusableTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddCardScreen extends StatelessWidget {
  static String id = 'addCardScreen';
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _cardNoController = new TextEditingController();
  TextEditingController _cvvController = new TextEditingController();
  TextEditingController _dateNoController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.14),
            child: Column(
              children: [
                SizedBox(height: size.height * 0.23),
                Container(
                  width: size.width * 0.9,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(13.0),
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  top: height * 0.03, left: width * 0.07, right: width * 0.07),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.09),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 21),
                    width: size.width,
                    height: size.height * 0.20,
                    decoration: BoxDecoration(
                      color: Color(0xFF404040),
                      borderRadius: BorderRadius.circular(13.0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/addCardMask.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReusableText(
                                      textString: '********',
                                      textFamily: 'DM Sans',
                                      textColor: Colors.white,
                                      textSize: 28,
                                      textWeight: FontWeight.bold),
                                  SvgPicture.asset(
                                      'assets/images/mastercard_logo.svg'),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ReusableText(
                                      textString: '**** **** **** ****',
                                      textFamily: 'DM Sans',
                                      textColor: Colors.white,
                                      textSize: 14,
                                      textWeight: FontWeight.bold),
                                  ReusableText(
                                      textString: '**/**',
                                      textFamily: 'DM Sans',
                                      textColor: Colors.white,
                                      textSize: 14,
                                      textWeight: FontWeight.bold),
                                ],
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        ReusableText(
                            textString: 'Add a card',
                            textFamily: 'DM Sans',
                            textColor: Color(0xFF263238),
                            textSize: size.width * 0.07,
                            textWeight: FontWeight.bold),
                        SizedBox(height: size.height * 0.01),
                        ReusableText(
                            textString:
                                'Fill in the details below to add a new card.\n'
                                'A one time of NGN50.00 will be deducted\n'
                                'and credited for confirmation.',
                            textFamily: 'DM Sans',
                            textColor: Color(0xFF404040),
                            textSize: size.width * 0.04,
                            textWeight: FontWeight.normal,
                            textAligner: TextAlign.center),
                        SizedBox(height: size.height * 0.05),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: ReusableText(
                                  textString: 'Card number',
                                  textColor: Color(0xFF878787),
                                  textSize: 14,
                                ),
                              ),
                              SizedBox(height: 2),
                              ReusableTextField(
                                controller: _cardNoController,
                                hintOfTextField: '0000 0000 0000 000',
                                hidePassword: false,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: size.height * 0.02),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ReusableText(
                                      textString: 'Expiry',
                                      textColor: Color(0xFF878787),
                                      textSize: 14,
                                    ),
                                    ReusableTextField(
                                      controller: _dateNoController,
                                      hintOfTextField: 'MM/YY',
                                      hidePassword: false,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: size.width * 0.05),
                            Expanded(
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ReusableText(
                                      textString: 'CVV',
                                      textColor: Color(0xFF878787),
                                      textSize: 14,
                                    ),
                                    ReusableTextField(
                                      controller: _cvvController,
                                      hintOfTextField: 'CVV',
                                      hidePassword: false,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  InkWell(
                    child: Container(
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xff003FA4)),
                      child: Center(
                        child: ReusableText(
                            textString: 'Add card',
                            textColor: Colors.white,
                            textSize: 18,
                            textAligner: TextAlign.center),
                      ),
                    ),
                    onTap: () {
                      _addCardSuccessBottomScreen(context);
                    },
                  ),
                  SizedBox(height: size.height * 0.02),
                  InkWell(
                    child: Center(
                      child: ReusableText(
                        textString: 'I\'ll add my card later',
                        textColor: Color(0xff003FA4),
                        textSize: 18,
                        textAligner: TextAlign.center,
                        stringDecor: TextDecoration.underline,
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _addCardSuccessBottomScreen(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(9.0),
                topRight: Radius.circular(9.0),
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
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                  Image.asset('assets/images/addCardSuccess.png'),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      'Card added successfully',
                      style: TextStyle(
                          color: Color(0xff263238),
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'DM Sans'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                        'You can now manage your cards in the bank section',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff6F6F6F),
                          fontSize: 14,
                          fontFamily: 'DM Sans',
                        )),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          );
        });
  }
}

import 'package:bitshore/widgets/reusableText.dart';
import 'package:bitshore/widgets/myReusableTextFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'homepage_Screen.dart';

class AddCardScreen extends StatelessWidget {

  static String id = 'addCardScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 SizedBox(height: 150),
                  Container(
                    //padding: EdgeInsets.symmetric(horizontal: 50),
                    width: 274,
                    height: 88,
                    decoration: BoxDecoration(
                      color: Color(0xFFC4C4C4),
                      borderRadius: BorderRadius.circular(13.0),
                    ),
                  ),
                ],
              ),
            ),

          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 21),
                    width: 333,
                    height: 175,
                    decoration: BoxDecoration(
                      color: Color(0xFF979797),
                      borderRadius: BorderRadius.circular(13.0),

                      image: DecorationImage(
                        image: AssetImage('assets/images/addCardMask.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [

                                    ReusableText(textString: '********', textFamily: 'DM Sans',
                                        textColor: Colors.white, textSize: 28, textWeight: FontWeight.bold),

                                    SvgPicture.asset('assets/images/mastercard_logo.svg'),

                                  ],
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ReusableText(textString: '**** **** **** ****', textFamily: 'DM Sans',
                                        textColor: Colors.white, textSize: 14, textWeight: FontWeight.bold),

                                    ReusableText(textString: '**/**', textFamily: 'DM Sans',
                                        textColor: Colors.white, textSize: 14, textWeight: FontWeight.bold),

                                  ],
                                ),
                              ),
        ]
                          ),
                        ),
                      ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10),
                  child: ReusableText(textString: 'Add a card', textFamily: 'DM Sans',
                      textColor: Color(0xFF263238), textSize: 22, textWeight: FontWeight.bold),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(45.0, 0.0, 45.0, 10),
                  child: ReusableText(textString: 'Fill in the details below to add a new card. A one time of NGN50.00 will be deducted and credited for confirmation',
                      textFamily: 'DM Sans',
                      textColor: Color(0xFF263238), textSize: 12, textWeight: FontWeight.normal, textAligner: TextAlign.center),
                ),

                Container(
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15),
                 child:Column(
                   children: [
                     Container(
                         alignment: AlignmentDirectional.centerStart,
                 child: ReusableText(textString: 'Card number', textColor: Color(0xFF878787), textSize: 14,

                 ),
                     ),
                     SizedBox(height: 2),
                     ReusableTextField(hintOfTextField: '0000 0000 0000 000', hidePassword: false,)
                   ],
                 ),
                  ),

                  Row(
                  children: [

                  Container(
                    padding: EdgeInsets.fromLTRB(15, 0, 10, 25),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              //alignment: AlignmentDirectional.bottomStart,
                              child: ReusableText(textString: 'Expiry', textColor: Color(0xFF878787), textSize: 14,
                              ),
                            ),
                            SizedBox(height: 2),

                            ReusableTextField(hintOfTextField: 'MM/YY', hidePassword: false, boxWidth: 155,)
                          ],
                      ),
                  ),

                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 15, 25),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                            //alignment: AlignmentDirectional.topEnd,
                            child: ReusableText(textString: 'CVV', textColor: Color(0xFF878787), textSize: 14,
                            ),
                          ),
                          SizedBox(height: 2),

                          ReusableTextField(hintOfTextField: ' ', hidePassword: false, boxWidth: 155,)
                        ],
                      ),
                    ),

            ],),

                Padding(
                  padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
                  child: InkWell(
                    child: Container(
                      height: 50,
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
                ),


                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: InkWell(
                    child: Container(
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                      ),
                      child: Center(
                        child: ReusableText(
                            textString: 'I\'ll add my card later',
                            textColor: Color(0xff003FA4),
                            textSize: 18,
                            textAligner: TextAlign.center,
                        stringDecor: TextDecoration.underline,),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()
                      ),
                      );
                    },
                  ),
                ),

  ],),

      ),
          ],),
    );
  }

  void _addCardSuccessBottomScreen(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(9.0), topRight: Radius.circular(9.0),
            bottomRight: Radius.zero, bottomLeft: Radius.zero)),
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
                 // SizedBox(height: 10),

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
                    child: Text('You can now manage your cards in the bank section',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xff6F6F6F), fontSize: 14, fontFamily: 'DM Sans',)),
                  ),

                  SizedBox(height: 10),

                ],
              ),
            ),
          );
        });
  }
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:bitshore/widgets/cards.dart';

class BankingPage extends StatefulWidget {
  static String id = 'bankingPage';

  @override
  _BankingPageState createState() => _BankingPageState();
}

class _BankingPageState extends State<BankingPage> {


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Bank and Accounts',
            style: TextStyle(
                color: Color(0xff343C6B),
                fontSize: size.width * 0.05,
                fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Color(0xff343C6B),
            unselectedLabelColor: Color(0xff343C6B),
            unselectedLabelStyle: TextStyle(
                color: Color(0xff343C6B), fontSize: size.width * 0.035),
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Color(0xff343C6B),
            tabs: [
              Tab(
                text: 'DIRHAM CARDS',
              ),
              Tab(
                text: "OTHER CARDS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[DirhamCard(), OtherCards()],
        ),
      ),
    );
  }
}
//
// body: SafeArea(
// child: Padding(
// padding: EdgeInsets.only(top: size.height * 0.03),
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// alignment: Alignment.topCenter,
// child: Text(
// 'Bank and Accounts',
// style: TextStyle(
// color: Color(0xff343C6B),
// fontSize: size.width * 0.05,
// fontWeight: FontWeight.bold),
// ),
// ),
//
// SizedBox(height: size.height * 0.01),
// Expanded(
// child: Container(
// child: DefaultTabController(
// length: 2,
// child: Scaffold(
// appBar: AppBar(
// bottom: TabBar(
// tabs: [
//
// ],
// ),
// ),
// ),
// ),
// ))
// //               ReusableText(
// //                 textString: 'Payments and Bills',
// //                 textColor: Color(0xFF828282),
// //                 textSize: width * 0.03,
// //                 textWeight: FontWeight.bold,
// //               ),
// //               Container(
// //                 height: height * 0.1108,
// //                 child: Row(
// //                   children: [
// //                     Padding(
// //                       padding: EdgeInsets.fromLTRB(
// //                           (width * 0.00933), 0, (width * 0.00933), 0),
// //                       child: Container(
// //                         height: height * 0.1108,
// //                         width: width * 0.7733,
// //                         child: ListView(
// //                           scrollDirection: Axis.horizontal,
// //                           //shrinkWrap: true,
// //                           children: [
// //                             PaymentListView(bill: 'Electricity'),
// //                             PaymentListView(bill: 'Airtime & Data'),
// //                             PaymentListView(bill: 'Internet'),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                     Container(
// //                       height: height * 0.1108,
// //                       width: width * 0.08,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.only(
// //                           topLeft: Radius.circular(5.0),
// //                           bottomLeft: Radius.circular(5.0),
// //                         ),
// //                         color: Colors.white,
// //                       ),
// //                       child: IconButton(
// //                         icon: Icon(
// //                           Icons.arrow_forward_ios_rounded,
// //                           size: 15,
// //                           color: Color(0xFF878787),
// //                         ),
// //                         onPressed: () {
// //                           // Scroll the PaymentListView forward
// //                         },
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //               Column(
// //                 children: [
// //                   Padding(
// //                     padding: EdgeInsets.fromLTRB(
// //                       width * 0.04266,
// //                       height * 0.00246,
// //                       width * 0.04266,
// //                       height * 0.00246,
// //                     ),
// //                     child: Container(
// //                       height: height * 0.06773,
// //                       width: width * 0.92,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.only(
// //                           topLeft: Radius.circular(5.0),
// //                           topRight: Radius.circular(5.0),
// //                         ),
// //                         /* border: Border(
// //                               bottom: BorderSide(
// //                                 width: 1, color: Color(0xFFC4C4C4),
// //                               )
// //                             ),
// // */
// //                         color: Colors.white,
// //                       ),
// //                       child: Padding(
// //                         padding: EdgeInsets.symmetric(
// //                             horizontal: width * 0.06133,
// //                             vertical: (height * 0.00123)),
// //                         child: Row(
// //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                           children: [
// //                             ReusableText(
// //                               textString: 'Base account',
// //                               textColor: Color(0xFF828282),
// //                               textSize: (width * 0.0373),
// //                               textWeight: FontWeight.w700,
// //                             ),
// //                             IconButton(
// //                               icon: Icon(
// //                                 Icons.keyboard_arrow_down_rounded,
// //                                 size: (width * 0.0426),
// //                                 color: Color(0xFF878787),
// //                               ),
// //                               onPressed: _setBaseContainer,
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                   Visibility(
// //                     visible: _setBaseContainerVisible,
// //                     child: Padding(
// //                       padding: EdgeInsets.fromLTRB((width * 0.0426), 0.0,
// //                           (width * 0.0426), (height * 0.03695)),
// //                       child: Material(
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.only(
// //                             bottomLeft: Radius.circular(5.0),
// //                             bottomRight: Radius.circular(5.0),
// //                           ),
// //                         ),
// //                         elevation: 1.0,
// //                         child: Container(
// //                           height: (height * 0.218),
// //                           width: (width * 0.92),
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.only(
// //                               bottomLeft: Radius.circular(5.0),
// //                               bottomRight: Radius.circular(5.0),
// //                             ),
// //                             color: Colors.white,
// //                           ),
// //                           child: Padding(
// //                             padding: EdgeInsets.fromLTRB(
// //                                 (width * 0.02667),
// //                                 (height * 0.02463),
// //                                 (width * 0.02667),
// //                                 (height * 0.043103)),
// //                             child: Container(
// //                               height: (height * 0.1502),
// //                               width: (width * 0.8553),
// //                               decoration: BoxDecoration(
// //                                 border: Border.all(
// //                                   width: 1.0,
// //                                   color: Color.fromRGBO(196, 196, 196, 0.34),
// //                                 ),
// //                                 borderRadius: BorderRadius.circular(5.0),
// //                                 gradient: LinearGradient(
// //                                     begin: Alignment.topLeft,
// //                                     end: Alignment.bottomRight,
// //                                     colors: [
// //                                       Color(0xFFEDEDED),
// //                                       Color(0xFFECECEC)
// //                                     ],
// //                                     stops: [0.0, 0.5],
// //                                     tileMode: TileMode.clamp),
// //                               ),
// //                               child: Column(
// //                                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                 children: [
// //                                   Row(
// //                                     //mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                                     children: [
// //                                       Padding(
// //                                         padding: EdgeInsets.fromLTRB(
// //                                             width * 0.0533,
// //                                             height * 0.02667,
// //                                             width * 0.0533,
// //                                             height * 0.02667),
// //                                         child: Column(
// //                                             crossAxisAlignment:
// //                                                 CrossAxisAlignment.start,
// //                                             children: [
// //                                               ReusableText(
// //                                                 textString: 'Nigerian Wallet 1',
// //                                                 textColor: Color(0xFF4F4F4F),
// //                                                 textSize: width * 0.0533,
// //                                                 textWeight: FontWeight.w700,
// //                                               ),
// //                                               SizedBox(height: 5),
// //                                               ReusableText(
// //                                                 textString: 'name',
// //                                                 textColor: Color(0xFFBDBDBD),
// //                                                 textSize: (width * 0.02667),
// //                                                 textWeight: FontWeight.w400,
// //                                               ),
// //                                             ]),
// //                                       ),
// //                                       SizedBox(width: width * 0.16),
// //                                       Padding(
// //                                         padding:
// //                                             EdgeInsets.all(width * 0.00533),
// //                                         child: Container(
// //                                           //alignment: AlignmentDirectional.topEnd,
// //                                           height: height * 0.0345,
// //                                           width: width * 0.128,
// //                                           decoration: BoxDecoration(
// //                                             border: Border.all(
// //                                               width: 1.0,
// //                                               color: Color.fromRGBO(
// //                                                   196, 196, 196, 0.34),
// //                                             ),
// //                                             //color: Color.fromRGBO(196, 196, 196, 0.34),
// //                                             borderRadius:
// //                                                 BorderRadius.circular(5.0),
// //                                             gradient: LinearGradient(
// //                                                 begin: Alignment.topLeft,
// //                                                 end: Alignment.bottomRight,
// //                                                 colors: [
// //                                                   Color(0xFFEDEDED),
// //                                                   Color(0xFFECECEC)
// //                                                 ],
// //                                                 stops: [0.0, 0.5],
// //                                                 tileMode: TileMode.clamp),
// //                                           ),
// //
// //                                           child: Center(
// //                                             child: ReusableText(
// //                                               textString: 'DIR',
// //                                               textColor: Color(0xFF4F4F4F),
// //                                               textSize: 14,
// //                                               textWeight: FontWeight.w700,
// //                                             ),
// //                                           ),
// //                                         ),
// //                                       ),
// //                                     ],
// //                                   ),
// //                                   Padding(
// //                                     padding: EdgeInsets.symmetric(
// //                                         horizontal: 20.0, vertical: 10),
// //                                     child: Row(
// //                                       mainAxisAlignment:
// //                                           MainAxisAlignment.start,
// //                                       children: [
// //                                         Column(
// //                                             crossAxisAlignment:
// //                                                 CrossAxisAlignment.start,
// //                                             children: [
// //                                               ReusableText(
// //                                                 textString: 'Lagbaja Tamedo',
// //                                                 textColor: Color(0xFF4F4F4F),
// //                                                 textSize: 14,
// //                                                 textWeight: FontWeight.w700,
// //                                               ),
// //                                               SizedBox(height: 5),
// //                                               ReusableText(
// //                                                 textString: 'owner',
// //                                                 textColor: Color(0xFFBDBDBD),
// //                                                 textSize: 10,
// //                                                 textWeight: FontWeight.w400,
// //                                               ),
// //                                             ]),
// //                                         SizedBox(width: 40),
// //                                         Column(
// //                                             crossAxisAlignment:
// //                                                 CrossAxisAlignment.start,
// //                                             children: [
// //                                               ReusableText(
// //                                                 textString: '12/01/2001',
// //                                                 textColor: Color(0xFF4F4F4F),
// //                                                 textSize: 14,
// //                                                 textWeight: FontWeight.w700,
// //                                               ),
// //                                               SizedBox(height: 5),
// //                                               ReusableText(
// //                                                 textString: 'created',
// //                                                 textColor: Color(0xFFBDBDBD),
// //                                                 textSize: 10,
// //                                                 textWeight: FontWeight.w400,
// //                                               ),
// //                                             ]),
// //                                       ],
// //                                     ),
// //                                   )
// //                                 ],
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               Column(
// //                 children: [
// //                   Padding(
// //                     padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 2.0),
// //                     child: Container(
// //                       height: 55,
// //                       width: 345,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.only(
// //                           topLeft: Radius.circular(5.0),
// //                           topRight: Radius.circular(5.0),
// //                         ),
// //
// //                         /*  border: Border(
// //                       bottom: BorderSide(
// //                         width: 1, color: Color(0xFFC4C4C4),
// //                       )
// //                   ),*/
// //
// //                         color: Colors.white,
// //                       ),
// //                       child: Padding(
// //                         padding: EdgeInsets.symmetric(
// //                             horizontal: 23.0, vertical: 1.0),
// //                         child: Row(
// //                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                           children: [
// //                             ReusableText(
// //                               textString: 'Home account',
// //                               textColor: Color(0xFF828282),
// //                               textSize: 14,
// //                               textWeight: FontWeight.w700,
// //                             ),
// //                             IconButton(
// //                               icon: Icon(
// //                                 Icons.keyboard_arrow_down_outlined,
// //                                 size: 16,
// //                                 color: Color(0xFF878787),
// //                               ),
// //                               onPressed: _setHomeContainer,
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //
// //                   // Divider(thickness: 1, color: Color(0xFFC4C4C4),),
// //
// //                   Visibility(
// //                     visible: _setHomeContainerVisible,
// //                     child: Padding(
// //                       padding: EdgeInsets.symmetric(horizontal: 16.0),
// //                       child: Container(
// //                         height: 367,
// //                         width: 345,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.only(
// //                             bottomLeft: Radius.circular(5.0),
// //                             bottomRight: Radius.circular(5.0),
// //                           ),
// //                           color: Colors.white,
// //                         ),
// //                         child: Column(
// //                           children: [
// //                             Padding(
// //                               padding:
// //                                   const EdgeInsets.fromLTRB(10, 20, 10, 15),
// //                               child: Container(
// //                                 height: 122,
// //                                 width: 332,
// //                                 decoration: BoxDecoration(
// //                                   border: Border.all(
// //                                     width: 1.0,
// //                                     color: Color.fromRGBO(196, 196, 196, 0.34),
// //                                   ),
// //                                   //color: Color.fromRGBO(196, 196, 196, 0.34),
// //                                   borderRadius: BorderRadius.circular(5.0),
// //                                   gradient: LinearGradient(
// //                                       begin: Alignment.topLeft,
// //                                       end: Alignment.bottomRight,
// //                                       colors: [
// //                                         Color(0xFFEDEDED),
// //                                         Color(0xFFECECEC)
// //                                       ],
// //                                       stops: [0.0, 0.5],
// //                                       tileMode: TileMode.clamp),
// //                                 ),
// //                                 child: Column(
// //                                   mainAxisAlignment: MainAxisAlignment.center,
// //                                   children: [
// //                                     Padding(
// //                                       padding: const EdgeInsets.symmetric(
// //                                           vertical: 25.0),
// //                                       child: ReusableText(
// //                                         textString: '350,000.00',
// //                                         textColor: Color(0xFF4F4F4F),
// //                                         textSize: 26,
// //                                         textWeight: FontWeight.w700,
// //                                       ),
// //                                     ),
// //                                     Padding(
// //                                       padding: EdgeInsets.symmetric(
// //                                           horizontal: 14.0),
// //                                       child: Row(
// //                                         mainAxisAlignment:
// //                                             MainAxisAlignment.spaceBetween,
// //                                         children: [
// //                                           Row(children: [
// //                                             SvgPicture.asset(
// //                                                 'assets/images/usdfag.svg',
// //                                                 width: 26.0,
// //                                                 height: 26.0),
// //                                             SizedBox(width: 8),
// //                                             ReusableText(
// //                                               textString: 'Dollar',
// //                                               textColor: Color(0xFF4F4F4F),
// //                                               textSize: 14,
// //                                               textWeight: FontWeight.w700,
// //                                             ),
// //                                           ]),
// //                                           ReusableText(
// //                                             textString: 'USD',
// //                                             textColor: Color(0xFF4F4F4F),
// //                                             textSize: 14,
// //                                             textWeight: FontWeight.w700,
// //                                           ),
// //                                         ],
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                             Padding(
// //                               padding:
// //                                   const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 28),
// //                               child: SecondBar(
// //                                   colour: Color(0xFF005CEE),
// //                                   accountBalance: '000,000.000',
// //                                   currency: 'NGN'),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               Padding(
// //                 padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 40.0),
// //                 child: Material(
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.only(
// //                       bottomLeft: Radius.circular(5.0),
// //                       bottomRight: Radius.circular(5.0),
// //                     ),
// //                   ),
// //                   elevation: 1.0,
// //                   child: Container(
// //                       width: 345,
// //                       height: 50,
// //                       decoration: BoxDecoration(
// //                         borderRadius: BorderRadius.only(
// //                           bottomLeft: Radius.circular(5.0),
// //                           bottomRight: Radius.circular(5.0),
// //                         ),
// //                         color: Colors.white,
// //                       ),
// //                       child: Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           IconButton(
// //                             icon: Icon(Icons.add_circle_outline_outlined),
// //                             iconSize: 22,
// //                             color: Colors.black,
// //                             onPressed: () {},
// //                           ),
// //                           SizedBox(width: 6),
// //                           ReusableText(
// //                             textString: 'Create DOM account',
// //                             textColor: Color(0xFF4F4F4F),
// //                             textSize: 14,
// //                             textWeight: FontWeight.w700,
// //                             textFamily: 'Nunito',
// //                           ),
// //                         ],
// //                       )),
// //                 ),
// //               )
// ],
// ),
// ),
// ),
// // ignore: must_be_immutable
// class PaymentListView extends StatelessWidget {
//   String bill;
//
//   PaymentListView({this.bill});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.fromLTRB(0, 0, 7.0, 0),
//       child: Container(
//         height: 90,
//         width: 90,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(5.0),
//           color: Colors.white,
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Container(
//                 height: 46,
//                 width: 46,
//                 decoration: BoxDecoration(
//                   color: Color(0xFFC4C4C4),
//                   borderRadius: BorderRadius.circular(5.0),
//                 ),
//               ),
//               SizedBox(height: 8),
//               ReusableText(
//                 textString: bill,
//                 textSize: 10,
//                 textFamily: 'Nunito',
//                 textColor: Color(0xFF828282),
//                 textWeight: FontWeight.w700,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




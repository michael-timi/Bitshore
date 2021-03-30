import '../widgets/bottomNavBar.dart';
import '../widgets/reusableText.dart';
import '../widgets/secondBar.dart';
import '../widgets/thirdBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/transactionItems.dart';
import '../widgets/upperBar.dart';


class HomePage extends StatefulWidget {
  static String id = 'homepage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    List<Widget> transactionList = [];

      transactionList.add(TransactionItems(firstString: 'Draco Hunco Flops',
        secondString: '04:59 AM',
        lastString: '+120,000.00',),);

      transactionList.add(TransactionItems(firstString: 'Drugs for John',
        secondString: '02:59 PM',
        lastString: '20,000.00',),);

      transactionList.add(TransactionItems(
        firstString: 'Supermarket transfer',
        secondString: '12:06 AM',
        lastString: '+45,000.00',),);


      return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 0.0),
                      child: UpperBar(),
                    ),),

                  Expanded(
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 21),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [

                            Expanded(
                              child: Container(
                                height: 200,
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                                child: SecondBar(colour: Color(0xFF005CEE), accountBalance: '320,000.00', currency: 'NGN'),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 140,
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
                                child: SecondBar(colour: Colors.black, accountBalance: '50,000.00', currency: 'AED'),
                              ),
                            ),
                          ],
                        )),
                  ),

                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                    child: Expanded(child: ThirdBar()),
                  ),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22.0, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(textString: 'Recent Transactions',
                              textColor: Color(0xFF4F4F4F),
                              textSize: 14,
                              textWeight: FontWeight.bold, textFamily: 'Nunito',),

                          ReusableText(textString: 'view all',
                              textColor: Color(0xFF878787),
                              textSize: 12,
                              textWeight: FontWeight.bold, textFamily: 'DM Sans',),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 187,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26)
                      ),
                      child: ListView.separated(
                          itemCount: transactionList.length,
                          separatorBuilder: (BuildContext context,
                              int index) => const Divider(),
                          itemBuilder: (BuildContext context, int index) {
                            return transactionList[index];
                          }

                      ),
                    ),
                  ),

                  SizedBox(height: 50),
                ]
            ),

          ),
        ),
        bottomNavigationBar: BottomNavBar(),
      );
    }



}
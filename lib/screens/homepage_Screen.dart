import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/widgets/reusableText.dart';
import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/widgets/secondBar.dart';
import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/widgets/thirdBar.dart';
import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/widgets/transactionItems.dart';
import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/widgets/upperBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/Regina/AndroidStudioProjects/bitshore/lib/widgets/bottomNavBar.dart';

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
        lastString: 'NGN 12,000.00',),);

      transactionList.add(TransactionItems(firstString: 'Drugs for John',
        secondString: '02:59 PM',
        lastString: 'NGN 300.00',),);

      transactionList.add(TransactionItems(
        firstString: 'Supermarket transfer',
        secondString: '012:06 AM',
        lastString: 'NGN 25000.00',),);


      return Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Expanded(
                    child: UpperBar(),),

                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          height: 120,

                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: SecondBar(colour: Color(0xFF197CEC), accountBalance: '320,000', currency: 'NGN'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                                  child: SecondBar(colour: Colors.black , accountBalance: '50,000', currency: 'AED'),
                                ),
                              ],
                            )),
                      )),

                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: ThirdBar(),
                      )),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ReusableText(textString: 'Recent Transactions',
                              textColor: Colors.black54,
                              textSize: 12,
                              textWeight: FontWeight.bold),
                          ReusableText(textString: 'view all',
                              textColor: Colors.black45,
                              textSize: 10,
                              textWeight: FontWeight.bold),
                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
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
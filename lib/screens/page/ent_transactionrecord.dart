import 'package:bitshore/widgets/reusableText.dart';
import 'package:flutter/material.dart';


class EnterpriseTransactionRecord extends StatefulWidget {
  @override
  _EnterpriseTransactionRecordState createState() => _EnterpriseTransactionRecordState();
}

class _EnterpriseTransactionRecordState extends State<EnterpriseTransactionRecord> {

  @override
  Widget build(BuildContext context) {
    DateTime now =  DateTime.now();
    DateTime date =  DateTime(now.year, now.month, now.day);


    var size = MediaQuery.of(context).size;
    var height =  size.height;
    var width = size.width;

    List <TransactionRecords> transactionTable = [];

    for( int x = 0; x < 6; x++) {
      transactionTable.add(
          TransactionRecords(
            transactionDetail: 'Joshua Igba',
            transactionSum: '2500.00',
          ));

      transactionTable.add(
          TransactionRecords(
            transactionDetail: 'Unknown 2347058123534',
            transactionSum: '2500.00',
          ));

      transactionTable.add(
          TransactionRecords(
            transactionDetail: 'Client',
            transactionSum: '2500.00',
          ));
    }

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width*0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: height* 0.02),

              Container(
                padding:  EdgeInsets.symmetric(vertical: height * 0.01),
                alignment: AlignmentDirectional.centerStart,
                child: ReusableText(
                  textString: 'TRANSACTIONS',
                  textColor: Colors.black87,
                  textSize: width * 0.05,
                  textAligner: TextAlign.center,
                  textWeight: FontWeight.w700,
                ),
              ),

              Material(
                elevation: 10.0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: size.height * 0.02),
                  //width:
                  height: height * 0.2,
                  decoration: BoxDecoration(
                    color: Color(0xff003FA4),
                    borderRadius: BorderRadius.circular(5.0)
                  ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            ReusableText(
                              textString: 'ORDERS:',
                              textColor: Colors.white,
                              textSize: width * 0.05,
                              textAligner: TextAlign.center,
                              textWeight: FontWeight.bold,
                            ),

                            ReusableText(
                              textString: '25',
                              textColor: Colors.white,
                              textSize: width * 0.08,
                              textAligner: TextAlign.center,
                              textWeight: FontWeight.bold,
                            ),
                          ],
                        ),

                        Divider(height: 5, color: Colors.white),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            ReusableText(
                              textString: 'SALES:',
                              textColor: Colors.white,
                              textSize: width * 0.05,
                              textAligner: TextAlign.center,
                              textWeight: FontWeight.bold,
                            ),

                            ReusableText(
                              textString: 'NGN45000.00',
                              textColor: Colors.white,
                              textSize: width * 0.08,
                              textAligner: TextAlign.center,
                              textWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ),
              ),


              Padding(
                padding: EdgeInsets.symmetric( vertical: height * 0.02),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ReusableText(
                      textString: 'Today',
                      textColor: Colors.black,
                      //textSize: width.,
                      textAligner: TextAlign.center,
                    ),

                    ReusableText(
                      textString: '$date',
                      textColor: Colors.black,
                      //textSize: width.,
                      textAligner: TextAlign.center,
                    ),
                  ],
                ),
              ),

              Divider(),

             Container(
               height: height * 0.5,
                child: ListView(
                    children: transactionTable
                    //separatorBuilder: (BuildContext context, int index) =>
                    //const Divider(),
                   /* itemBuilder: (BuildContext context, int index) {
                      return transactionTable[index];
                    }*/
                    ),
              ),

              Container(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionRecords  extends StatelessWidget {

   String transactionDetail;
   String transactionSum;

    TransactionRecords({this.transactionDetail, this.transactionSum});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    var height =  size.height;
    var width = size.width;

    return Container(
      height: height * 0.04,
      //width: ,

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ReusableText(
              textSize: width * 0.04,
              textString: '$transactionDetail',
              textColor: Color(0xFF878787),
              textWeight: FontWeight.normal,
              textFamily: 'DM Sans',
            ),

            ReusableText(
              textSize: width * 0.04,
              textString: 'NGN$transactionSum',
              textColor: Color(0xFF06B692),
              textWeight: FontWeight.normal,
              textFamily: 'DM Sans',
            ),
          ],
        ),
      )
    );
  }
}

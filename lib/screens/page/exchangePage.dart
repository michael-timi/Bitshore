import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bitshore/models/exchange.dart';
import 'package:bitshore/screens/page/exchangeDetailPage.dart';

class ExchangePage extends StatefulWidget {
  static String id = 'exchangePage';

  @override
  _ExchangePageState createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: size.height * 0.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.height * 0.02),
              child: Container(
                alignment: Alignment.topCenter,
                child: Text(
                  'Exchange',
                  style: TextStyle(
                      color: Color(0xff343C6B),
                      fontSize: size.width * 0.05,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.height * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Pair',
                        style: TextStyle(
                            color: Color(0xff4F4F4F),
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: size.height * 0.01,
                        width: size.height * 0.01,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/arrow.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Rate',
                        style: TextStyle(
                            color: Color(0xff4F4F4F),
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: size.height * 0.01,
                        width: size.height * 0.01,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/arrow.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(),
            Expanded(
              child: ListView.builder(
                  itemCount: exchange.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ExchangeDetail(
                                      exchangeModel: exchange[index],
                                    )));
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: size.height * 0.02,
                            vertical: size.height * 0.02),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: size.height * 0.03,
                                  width: size.height * 0.05,
                                  child: Stack(
                                    children: [
                                      Container(
                                        height: size.height * 0.025,
                                        width: size.height * 0.025,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    exchange[index].image1), fit: BoxFit.fitHeight)),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: size.height * 0.02),
                                        child: Container(
                                          height: size.height * 0.025,
                                          width: size.height * 0.025,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      exchange[index].image2), fit: BoxFit.fitHeight)),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: size.width * 0.02),
                                Text(
                                  exchange[index].text1,
                                  style: TextStyle(
                                      color: Color(0xff343C6B),
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '/',
                                  style: TextStyle(
                                      color: Color(0xff343C6B),
                                      fontSize: size.width * 0.04),
                                ),
                                Text(
                                  exchange[index].text2,
                                  style: TextStyle(
                                      color: Color(0xff343C6B),
                                      fontSize: size.width * 0.04),
                                )
                              ],
                            ),
                            Text(
                              exchange[index].value.toString(),
                              style: TextStyle(
                                  color: Color(0xff343C6B),
                                  fontSize: size.width * 0.04, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SearchCurrency extends StatelessWidget {
  SearchCurrency(
      {@required this.text1, @required this.text2, @required this.image});

  String text1, text2, image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    text1,
                    style: TextStyle(
                        color: Color(0xff343C6B),
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  child: Text(
                    text2,
                    style: TextStyle(
                        color: Color(0xff828282),
                        fontSize: size.width * 0.025,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: size.height * 0.025,
            width: size.height * 0.03,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.none)),
          ),
        ],
      ),
    );
  }
}

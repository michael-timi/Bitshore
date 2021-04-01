import 'package:bitshore/screens/page/profilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpperBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        'Welcome back',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 12,
                            fontFamily: 'DM Sans',
                            color: Color(0xFF828282)),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      child: Text(
                        'Lagbaja Tamedo',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            fontFamily: 'Nunito',
                            color: Color(0xFF263238)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: AlignmentDirectional.centerEnd,
                child: IconButton(
                  padding: EdgeInsets.all(8.0),
                  iconSize: 50,
                  icon: CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/id_image.png')),
                  onPressed: () {
                    Navigator.pushNamed(context, ProfilePage.id);
                  },
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }
}

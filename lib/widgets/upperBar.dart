import 'package:bitshore/profilePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpperBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Row(
              children: [

                Expanded(
                  child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          child: Text('Welcome back',
                            style: TextStyle(
                              wordSpacing: -2,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                              fontFamily: 'Sans serif',
                              color: Colors.deepPurpleAccent[400],

                            ),
                          ),
                        ),

                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text('Lagbaja Tamedo',
                            style: TextStyle(
                              wordSpacing: -2,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'Sans serif',
                              color: Colors.deepPurpleAccent[400],
                            ),
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
                          backgroundImage: AssetImage('images/id_image.png') ),
                      onPressed: () {
                        Navigator.pushNamed(context, ProfilePage.id);
                      },
                    ),
                  ),
                ),

              ]

          ),
        ],
      ),


    );
  }
}

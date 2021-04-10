import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {

  ReusableTextField({ this.hintOfTextField,  this.hidePassword, this.onChangedValue, this.keyType, this.boxWidth});

 final String hintOfTextField;
 final Function onChangedValue;
 final bool hidePassword;
 final TextInputType keyType;
 final double boxWidth;

  @override
  Widget build(BuildContext context) {

    return Container(
      width: boxWidth,
      child: TextFormField(
        keyboardType: keyType,
        //textAlign: TextAlign.center,
          obscureText: hidePassword,
          onChanged: onChangedValue,
          decoration: InputDecoration(
            hintText: hintOfTextField,
            fillColor: Color(0xFFC4C4C4),
            filled: true,
            contentPadding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(width: 0.0),
            ),

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 0.0),
              borderRadius: BorderRadius.circular(5.0),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 0.0 ),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
    );

  }
}

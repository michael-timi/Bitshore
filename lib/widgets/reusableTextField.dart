import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {

  ReusableTextField({ this.hintOfTextField,  this.hidePassword, this.onChangedValue, this.keyType});

 final String hintOfTextField;
 final Function onChangedValue;
 final bool hidePassword;
 final TextInputType keyType;

  @override
  Widget build(BuildContext context) {

    return Container(
      child: TextField(
        keyboardType: keyType,
        textAlign: TextAlign.center,
          obscureText: hidePassword,
          onChanged: onChangedValue,
          decoration: InputDecoration(
            hintText: hintOfTextField,
            contentPadding:
            EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: BorderSide(width: 1.5),
            ),

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 1.0 ),
              borderRadius: BorderRadius.circular(5.0),
            ),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black26, width: 2.0 ),
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
    );

  }
}

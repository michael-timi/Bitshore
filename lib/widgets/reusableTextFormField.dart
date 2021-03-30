import 'package:flutter/material.dart';

class ReusableTextFormField extends StatefulWidget {

  Function onPasswordReceived;

  ReusableTextFormField({this.onPasswordReceived});

  @override
  _ReusableTextFormFieldState createState() => _ReusableTextFormFieldState();
}

class _ReusableTextFormFieldState extends State<ReusableTextFormField> {

  bool _obscureText = true;

  get onPasswordReceived => onPasswordReceived;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      TextFormField(
        onFieldSubmitted: onPasswordReceived,
        keyboardType: TextInputType.text,
        obscureText: _obscureText,//This will obscure text dynamically
        decoration: InputDecoration(
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
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText
                  ? Icons.visibility
                  : Icons.visibility_off,
              color: Colors.black45,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      ),
    );
  }
}
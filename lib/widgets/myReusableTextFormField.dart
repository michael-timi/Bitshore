import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableTextField extends StatefulWidget {
  ReusableTextField(
      {this.hintOfTextField,
      this.hidePassword,
      this.onChangedValue,
      this.keyType,
      this.boxWidth, this.controller});

  String hintOfTextField;
  Function onChangedValue;
  bool hidePassword, isValid;
  TextInputType keyType;
  double boxWidth;
  TextEditingController controller;

  @override
  _ReusableTextFieldState createState() => _ReusableTextFieldState();
}

class _ReusableTextFieldState extends State<ReusableTextField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyType,
        obscureText: widget.hidePassword,
        onChanged: widget.onChangedValue,
        decoration: InputDecoration(
            alignLabelWithHint: true,
            labelStyle: Theme.of(context).textTheme.caption.copyWith(
                fontSize: size.width * 0.035,
                fontWeight: FontWeight.w500,
                color: Color(0xff263238)),
            hintText: widget.hintOfTextField,
            fillColor: Color.fromRGBO(243, 246, 250, 1),
            filled: true,
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1),
                borderSide: BorderSide(color: Colors.red)),
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1),
                borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1),
                borderSide: BorderSide.none)),
        onFieldSubmitted: (String value) {
          if (value.isEmpty) {
            widget.isValid = false;
          }
          setState(() {});
        },
        validator: (String value) {
          if (value.isEmpty) {
            return 'Password field cannot be Empty.';
          }
          return null;
        },
      ),
    );
  }
}

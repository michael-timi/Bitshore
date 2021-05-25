import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableTextField extends StatefulWidget {
  ReusableTextField(
      {this.hintOfTextField,
      this.hidePassword,
      this.onChangedValue,
      this.keyType,
      this.boxWidth,
      this.controller,
      this.inputLength});

  String hintOfTextField;
  Function onChangedValue;
  bool hidePassword, isValid;
  TextInputType keyType;
  double boxWidth;
  TextEditingController controller;
  int inputLength;

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
        maxLength: widget.inputLength,
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

// ignore: must_be_immutable, camel_case_types
class textField extends StatefulWidget {
  textField(
      {this.hintOfTextField,
      this.label,
      this.onChangedValue,
      this.keyType, this.sIcon,
      this.isHiddenPssword,
      this.hintText,
      this.boxWidth,
      this.controller});

  String hintOfTextField, hintText, label;
  Function onChangedValue, validate;
  bool isValid, isHiddenPssword;
  Widget sIcon;
  TextInputType keyType;
  double boxWidth;
  TextEditingController controller;

  @override
  _textFieldState createState() => _textFieldState();
}

// ignore: camel_case_types
class _textFieldState extends State<textField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: TextFormField(
        controller: widget.controller,
        style:
            Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.black),
        maxLines: 1,
        enabled: true,
        keyboardType: widget.keyType,
        textInputAction: TextInputAction.next,
        obscureText: widget.isHiddenPssword,
        onChanged: widget.onChangedValue,
        decoration: InputDecoration(
          suffixIcon: widget.sIcon,
            hintText: widget.hintText,
            labelText: widget.label,
            labelStyle: Theme.of(context).textTheme.caption.copyWith(
                fontSize: size.width * 0.035,
                fontWeight: FontWeight.w500,
                color: Color(0xff263238)),
            alignLabelWithHint: true,
            fillColor: Color.fromRGBO(243, 246, 250, 1),
            filled: true,
            errorStyle:
                Theme.of(context).textTheme.caption.copyWith(color: Colors.red),
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
            return 'field cannot be Empty.';
          }
          return null;
        },
      ),
    );
  }
}

// ignore: must_be_immutable, camel_case_types
class passwordField extends StatefulWidget {
  passwordField(
      {this.hintOfTextField,
      this.label,
      this.onChangedValue,
      this.keyType,
      this.hintText,
      this.boxWidth,
      this.controller});

  String hintOfTextField, hintText, label;
  Function onChangedValue, validate;
  bool isValid, isHiddenPassword;
  TextInputType keyType;
  double boxWidth;
  TextEditingController controller;

  @override
  _passwordFieldState createState() => _passwordFieldState();
}

// ignore: camel_case_types
class _passwordFieldState extends State<passwordField> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: TextFormField(
        controller: widget.controller,
        style:
            Theme.of(context).textTheme.bodyText1.copyWith(color: Colors.black),
        maxLines: 1,
        enabled: true,
        obscureText: widget.isHiddenPassword,
        keyboardType: widget.keyType,
        textInputAction: TextInputAction.next,
        onChanged: widget.onChangedValue,
        decoration: InputDecoration(
            hintText: widget.hintText,
            labelText: widget.label,
            labelStyle: Theme.of(context).textTheme.caption.copyWith(
                fontSize: size.width * 0.035,
                fontWeight: FontWeight.w500,
                color: Color(0xff263238)),
            alignLabelWithHint: true,
            fillColor: Color.fromRGBO(243, 246, 250, 1),
            filled: true,
            errorStyle:
                Theme.of(context).textTheme.caption.copyWith(color: Colors.red),
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
            return 'field cannot be Empty.';
          }
          return null;
        },
      ),
    );
  }
}

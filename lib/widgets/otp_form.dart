import 'package:bitshore/utils/constant.dart';
import 'package:flutter/material.dart';

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1.0) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        SizedBox(
          child: TextFormField(
            autofocus: true,
            obscureText: true,
            style: TextStyle(fontSize: 24.0),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            // onChanged: (value) {
            //   nextField(value, pin2FocusNode);
            // },
          ),
        ),
        SizedBox(
          //width: getProportionateScreenWidth(60),
          child: TextFormField(
            focusNode: pin2FocusNode,
            obscureText: true,
            style: TextStyle(fontSize: 24),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            // onChanged: (value) => nextField(value, pin3FocusNode),
          ),
        ),
        SizedBox(
          //width: getProportionateScreenWidth(60),
          child: TextFormField(
            focusNode: pin3FocusNode,
            obscureText: true,
            style: TextStyle(fontSize: 24),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            //onChanged: (value) => nextField(value, pin4FocusNode),
          ),
        ),
        SizedBox(
          //width: getProportionateScreenWidth(60),
          child: TextFormField(
            focusNode: pin4FocusNode,
            obscureText: true,
            style: TextStyle(fontSize: 24),
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center,
            decoration: otpInputDecoration,
            // onChanged: (value) {
            //   if (value.length == 1) {
            //     pin4FocusNode.unfocus();
            //     // Then you need to check is the code is correct or not
            //   }
            // },
          ),
        )
      ]),
      // DefaultButton(
      //   text: "Continue",
      //   press: () {},
    );
  }
}

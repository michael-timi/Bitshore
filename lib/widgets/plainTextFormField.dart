import 'package:flutter/material.dart';

class PlainTextFormField extends StatelessWidget {

  final String labelString;
  final bool obscureContent;
  final TextInputType inputType;

  PlainTextFormField({this.labelString, this.obscureContent, this.inputType,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        //controller: _emailController,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .copyWith(color: Colors.black),
        obscureText: obscureContent,
        maxLines: 1,
        enabled: true,
        textInputAction: TextInputAction.next,
        keyboardType: inputType,
        decoration: InputDecoration(
            labelText: labelString,
            labelStyle: Theme.of(context)
                .textTheme
                .caption
                .copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xff263238)),
            alignLabelWithHint: true,
            fillColor: Color.fromRGBO(243, 246, 250, 1),
            filled: true,
            errorStyle: Theme.of(context)
                .textTheme
                .caption
                .copyWith(color: Colors.red),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1),
                borderSide:
                BorderSide(color: Colors.red)),
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1),
                borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(1),
                borderSide: BorderSide.none)),
        //onFieldSubmitted: onContentSubmitted,
      // validator: inputValidator,
      );
  }
}

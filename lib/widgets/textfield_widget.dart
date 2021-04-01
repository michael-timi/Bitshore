import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({
    Key key,
    @required this.icon,
    @required this.textEditingController,
    @required this.label,
    @required this.inputType,
    @required this.onFieldSubmitted,
    @required this.onValidate,
    @required this.isObscure,
    @required this.description,
  }) : super(key: key);

  final TextEditingController textEditingController;
  final String label;
  final TextInputType inputType;
  final Function onFieldSubmitted;
  final Function onValidate;
  final bool isObscure;
  final String description;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          description,
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: Color(0xff263238)),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: textEditingController,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: Colors.black),
          obscureText: isObscure,
          maxLines: 1,
          enabled: true,
          textInputAction: TextInputAction.next,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              suffixIcon: icon,
              labelText: label,
              labelStyle: Theme.of(context).textTheme.caption.copyWith(
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
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.red)),
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none)),
          onFieldSubmitted: onFieldSubmitted,
          validator: onValidate,
        ),
      ],
    );
  }
}

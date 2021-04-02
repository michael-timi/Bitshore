import 'package:bitshore/widgets/reusableText.dart';
import 'package:bitshore/widgets/reusableTextField.dart';
import 'package:bitshore/widgets/reusableTextFormField.dart';
import 'package:country_pickers/country.dart';
import 'package:flutter/material.dart';
import 'package:country_pickers/country_pickers.dart';

// ignore: must_be_immutable
class OnBoardingScreenFive extends StatelessWidget {
  static String id = 'onBoardingScreenFive';
  String userEmail;
  String userPassword;
  String userPhoneNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset('onBoardingFiveAndSix.png'),
              ReusableText(
                  textString: 'Create an account',
                  textColor: Color(0xFF005CEE),
                  textSize: 25,
                  textWeight: FontWeight.bold,
                  textAligner: TextAlign.left),
              Column(
                children: [
                  ReusableText(
                      textString: 'Email address',
                      textColor: Colors.black54,
                      textSize: 18),
                  ReusableTextField(
                    keyType: TextInputType.emailAddress,
                    onChangedValue: (value) {
                      userEmail = value;
                    },
                  ),
                ],
              ),
              Column(
                children: [
                  ReusableText(
                      textString: 'Password',
                      textColor: Colors.black54,
                      textSize: 18),
                  ReusableTextFormField(onPasswordReceived: (value) {
                    userPassword = value;
                  })
                ],
              ),
              Column(
                children: [
                  ReusableText(
                      textString: 'Phone',
                      textColor: Colors.black54,
                      textSize: 18),
                  Row(
                    children: [
                      CountryPickerDropdown(
                        initialValue: 'NG',
                        itemBuilder: _buildDropdownItem,
                        onValuePicked: (Country country) {
                          print("${country.name}");
                        },
                      ),
                      SizedBox(width: 8.0),
                      ReusableTextField(
                        keyType: TextInputType.phone,
                        onChangedValue: (value) {
                          userPhoneNumber = value;
                        },
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDropdownItem(Country country) => Container(
      child: Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          SizedBox(
            width: 8.0,
          ),
          Text("+${country.phoneCode}(${country.isoCode})"),
        ],
      ),
    );

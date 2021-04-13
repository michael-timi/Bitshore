import 'package:bitshore/screens/page/loginPage.dart';
import 'package:bitshore/screens/page/otpPage.dart';
import 'package:bitshore/widgets/reusableText.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'signuppage';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
  bool isValid = false;
  bool isHiddenPassword = true;
  String valueChoose;
  List countryList = ['NGN', 'CAD', 'USA'];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: size.height * 0.08),
              Container(
                height: size.height / 4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/signIn.png'),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                        textString: 'Create an account',
                        textColor: Color(0xff263238),
                        textSize: 22,
                        textWeight: FontWeight.bold),
                    SizedBox(height: 50),
                    Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text(
                                'Email address',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(color: Color(0xff263238)),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            TextFormField(
                              controller: _emailController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.black),
                              obscureText: false,
                              maxLines: 1,
                              enabled: true,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  labelText: 'mail@example.com',
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
                              onFieldSubmitted: (String value) {},
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Password field cannot be Empty.';
                                }
                                return null;
                              },
                            ),
                            SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text(
                                'Password',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(color: Color(0xff263238)),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            TextFormField(
                              controller: _passwordController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(color: Colors.black),
                              obscureText: isHiddenPassword,
                              maxLines: 1,
                              enabled: true,
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      icon: Icon(
                                        isHiddenPassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Color(isHiddenPassword
                                            ? 0xff003FA4
                                            : 0xff828282),
                                      ),
                                      onPressed: () {
                                        _togglePasswordView();
                                      }),
                                  labelText: 'Enter your password',
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
                              onFieldSubmitted: (String value) {
                                if (value.isEmpty) {
                                  isValid = false;
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
                            SizedBox(height: 30),
                            Padding(
                              padding: const EdgeInsets.only(left: 4),
                              child: Text(
                                'Phone',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(color: Color(0xff263238)),
                              ),
                            ),
                            Row(
                              children: [
                                Flexible(
                                    flex: 1,
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 16, right: 8),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          color:
                                              Color.fromRGBO(243, 246, 250, 1)),
                                      child: DropdownButton(
                                        value: valueChoose,
                                        onChanged: (newValue) {
                                          setState(() {
                                            valueChoose = newValue;
                                          });
                                        },
                                        isExpanded: true,
                                        underline: SizedBox(),
                                        items: countryList.map((valueItem) {
                                          return DropdownMenuItem(
                                              value: valueItem,
                                              child: Text(valueItem));
                                        }).toList(),
                                      ),
                                    )),
                                SizedBox(width: 10),
                                Flexible(
                                  flex: 2,
                                  child: TextFormField(
                                    controller: _phoneController,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(color: Colors.black),
                                    obscureText: false,
                                    maxLines: 1,
                                    enabled: true,
                                    textInputAction: TextInputAction.next,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: '08123456789',
                                        labelStyle: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xff263238)),
                                        alignLabelWithHint: true,
                                        fillColor:
                                            Color.fromRGBO(243, 246, 250, 1),
                                        filled: true,
                                        errorStyle: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .copyWith(color: Colors.red),
                                        errorBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            borderSide:
                                                BorderSide(color: Colors.red)),
                                        contentPadding:
                                            const EdgeInsets.all(10),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            borderSide: BorderSide.none),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(1),
                                            borderSide: BorderSide.none)),
                                    onFieldSubmitted: (String value) {},
                                    validator: (String value) {
                                      if (value.isEmpty) {
                                        return 'Password field cannot be Empty.';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            SizedBox(height: 60),
                            InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0, right: 8.0),
                                child: Container(
                                    child: (Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Already own an account?',
                                        style: TextStyle(
                                            color: Color(0xff003FA4),
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(width: 5),
                                    Text('SIGN IN',
                                        style: TextStyle(
                                            color: Color(0xff003FA4),
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline)),
                                  ],
                                ))),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginPage()
                                    ),
                                );
                              },
                            ),
                            SizedBox(height: 20),
                            InkWell(
                              child: Container(
                                height: size.height * 0.05,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Color(0xff003FA4)),
                                child: Center(
                                  child: ReusableText(
                                      textString: 'Continue',
                                      textColor: Colors.white,
                                      textSize: 18,
                                      textAligner: TextAlign.center),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    // builder: (context) => OtpPage()
                                    ),
                                );
                              },
                            ),
                            SizedBox(height: 20),
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}

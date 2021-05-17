import 'package:bitshore/screens/signUp/loginPage.dart';
import 'package:bitshore/screens/signUp/otpPage.dart';
import 'package:bitshore/widgets/myReusableTextFormField.dart';
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
  String valueChoose, email, password, phone;
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
              SizedBox(height: size.height * 0.07),
              Container(
                height: size.height / 4,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/signIn.png'),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ReusableText(
                        textString: 'Create an account',
                        textColor: Color(0xff263238),
                        textSize: size.width * 0.05,
                        textWeight: FontWeight.bold),
                    SizedBox(height: size.height * 0.04),
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
                            SizedBox(height: size.height * 0.005),
                            textField(
                              controller: _emailController,
                              keyType: TextInputType.emailAddress,
                              isHiddenPssword: false,
                              label: 'mail@example.com',
                              onChangedValue: (value) {
                                email = value;
                              },
                            ),
                            SizedBox(height: size.height * 0.02),
                            textField(
                              controller: _passwordController,
                              label: 'Enter your password',
                              keyType: TextInputType.visiblePassword,
                              isHiddenPssword: isHiddenPassword,
                              sIcon: IconButton(
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
                              onChangedValue: (value) {
                                password = value;
                              },
                            ),
                            SizedBox(height: size.height * 0.02),
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
                                SizedBox(width: size.width * 0.02),
                                Flexible(
                                  flex: 2,
                                  child: textField(
                                    controller: _phoneController,
                                    isHiddenPssword: false,
                                    label: 'Phone',
                                    hintText: '08123456789',
                                    keyType: TextInputType.phone,
                                    onChangedValue: (value) {
                                      phone = value;
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: size.height * 0.05),
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
                                      builder: (context) => LoginPage()),
                                );
                              },
                            ),
                            SizedBox(height: size.height * 0.02),
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
                                      textSize: size.width * 0.04,
                                      textWeight: FontWeight.bold,
                                      textAligner: TextAlign.center),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OtpPage()),
                                );
                              },
                            ),
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

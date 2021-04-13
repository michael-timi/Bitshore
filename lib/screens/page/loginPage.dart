import 'package:bitshore/screens/page/signupPage.dart';
import 'package:bitshore/screens/page/welcomePage.dart';
import 'package:bitshore/widgets/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  static String id = 'loginpage';
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  bool isValid = false;
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              SizedBox(height: height * 0.1),
              Container(
                height: height / 4,
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
                        textString: 'Login to proceed',
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
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Container(
                                  child: (Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    child: Text('Forgot Password?',
                                        style: TextStyle(
                                            color: Color(0xff003FA4),
                                            fontWeight: FontWeight.bold)),
                                    onTap: () {},
                                  ),
                                  InkWell(
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                            radius: 16,
                                            backgroundColor: Colors.white,
                                            backgroundImage: AssetImage(
                                                'assets/images/fingerprint.png')),
                                        SizedBox(width: 5),
                                        Text('Use fingerprint',
                                            style: TextStyle(
                                                color: Color(0xff003FA4),
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    onTap: () {
                                      _fingerprintModal(context);
                                    },
                                  ),
                                ],
                              ))),
                            ),
                            SizedBox(height: 60),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: InkWell(
                                  child: Container(
                                      child: (Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Don`t have an account?',
                                          style: TextStyle(
                                              color: Color(0xff003FA4),
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(width: 5),
                                      Text('Sign up',
                                          style: TextStyle(
                                              color: Color(0xff003FA4),
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.underline)),
                                    ],
                                  ))),
                                  onTap: () {
                                    Navigator.pop(context);
                                  }),
                            ),
                            SizedBox(height: 20),
                            InkWell(
                              child: Container(
                                height: height * 0.05,
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
                                      builder: (context) => WelcomePage()),
                                );
                              },
                            )
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

  void _fingerprintModal(context) {
    showModalBottomSheet(
        context: context,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        builder: (BuildContext bc) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              height: MediaQuery.of(context).size.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(FontAwesomeIcons.times,
                              color: Colors.black)),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                  Text(
                    'Fingerprint access',
                    style: TextStyle(
                        color: Color(0xff263238),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  Text('Unlock your account',
                      style: TextStyle(color: Color(0xff6F6F6F), fontSize: 16)),
                  SizedBox(height: 50),
                  Center(
                      child: Column(
                    children: [
                      Container(
                        height: 62,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/fingerprint.png'),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text('Touch the fingerprint sensor',
                          style: TextStyle(
                              color: Color(0xff6F6F6F), fontSize: 16)),
                    ],
                  )),
                ],
              ),
            ),
          );
        });
  }
}

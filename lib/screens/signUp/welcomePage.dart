import 'package:bitshore/screens/page/addCard.dart';
import 'package:bitshore/screens/signUp/loginPage.dart';
import 'package:bitshore/widgets/myReusableTextFormField.dart';
import 'package:bitshore/widgets/reusableText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomePage extends StatefulWidget {
  static String id = 'welcomepage';

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _passwordController = new TextEditingController();
  bool isValid = false;
  bool isHiddenPassword = true;
  String password;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: size.height * 0.15),
                Container(
                  height: size.height / 4,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/onBoardingEightAndNine.png'),
                    ),
                  ),
                ),
                ReusableText(
                    textString: 'Welcome Back',
                    textColor: Color(0xff263238),
                    textSize: size.width * 0.05,
                    textWeight: FontWeight.bold,
                    textAligner: TextAlign.center),
                SizedBox(height: size.height * 0.005),
                ReusableText(
                    textString: 'Enter your password',
                    textColor: Color(0xff263238),
                    textSize: size.height * 0.015,
                    textAligner: TextAlign.center),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
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
                          SizedBox(height: size.height * 0.01),
                          textField(
                            controller: _passwordController,
                            keyType: TextInputType.visiblePassword,
                            label: 'Enter your password',
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
                        ],
                      )),
                ),
                SizedBox(height: size.height * 0.02),
                Padding(
                  padding: const EdgeInsets.only(left: 28, right: 28),
                  child: Container(
                      child: (Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: Text('Forgot Password?',
                            style: TextStyle(
                                color: Color(0xff003FA4),
                                fontWeight: FontWeight.bold)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        },
                      ),
                      InkWell(
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage(
                                    'assets/images/fingerprint.png')),
                            SizedBox(width: size.width * 0.01),
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
                SizedBox(height: size.height * 0.08),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: InkWell(
                    child: Container(
                      height: size.height * 0.05,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xff003FA4)),
                      child: Center(
                        child: ReusableText(
                            textString: 'Continue',
                            textColor: Colors.white,
                            textSize: size.width * 0.035,
                            textWeight: FontWeight.bold,
                            textAligner: TextAlign.center),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AddCardScreen()),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      )),
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
          var size = MediaQuery.of(context).size;
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              height: size.height * 0.3,
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
                  SizedBox(height: size.height * 0.01),
                  Text(
                    'Fingerprint access',
                    style: TextStyle(
                        color: Color(0xff263238),
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.035),
                  ),
                  Text('Unlock your account',
                      style: TextStyle(
                          color: Color(0xff6F6F6F),
                          fontSize: size.width * 0.03)),
                  SizedBox(height: size.height * 0.04),
                  Center(
                      child: Column(
                    children: [
                      Container(
                        height: size.height * 0.1,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/fingerprint.png'),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text('Touch the fingerprint sensor',
                          style: TextStyle(
                              color: Color(0xff6F6F6F),
                              fontSize: size.width * 0.03)),
                    ],
                  )),
                ],
              ),
            ),
          );
        });
  }
}

import 'package:bitshore/widgets/myReusableTextFormField.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewGoalPage extends StatefulWidget {
  static String id = 'newGoalPage';

  @override
  _NewGoalPageState createState() => _NewGoalPageState();
}

class _NewGoalPageState extends State<NewGoalPage> {
  String planChoose, methodChoose, amount, startDate, endDate;
  List paymentPlanList = ['choose a plan', 'PLAN A', 'PLAN B', 'PLAN C'];
  List paymentMethodList = ['One off', 'Two off'];
  static GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _startDateController = new TextEditingController();
  TextEditingController _endDateController = new TextEditingController();
  TextEditingController _savingsAmountController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 24),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back_ios, color: Colors.black)),
                  Spacer(),
                  Text(
                    'Add a new goal',
                    style: TextStyle(
                        color: Color(0xff343C6B),
                        fontSize: size.width * 0.05,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: size.height * 0.04),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'What type of savings do you like?',
                        style: TextStyle(
                            color: Color(0xff4F4F4F),
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Container(
                      padding: EdgeInsets.only(left: 16, right: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: Color.fromRGBO(243, 246, 250, 1)),
                      child: DropdownButton(
                        value: planChoose,
                        onChanged: (newValue) {
                          setState(() {
                            planChoose = newValue;
                          });
                        },
                        isExpanded: true,
                        underline: SizedBox(),
                        items: paymentPlanList.map((valueItem) {
                          return DropdownMenuItem(
                              value: valueItem, child: Text(valueItem));
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'How much would you like to save?',
                        style: TextStyle(
                            color: Color(0xff4F4F4F),
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    textField(
                      controller: _savingsAmountController,
                      isHiddenPssword: false,
                      keyType: TextInputType.number,
                      hintText: 'amount to save',
                      onChangedValue: (value) {
                        amount = value;
                      },
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'What type of savings do you like?',
                        style: TextStyle(
                            color: Color(0xff4F4F4F),
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Container(
                      padding: EdgeInsets.only(left: 16, right: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1),
                          color: Color.fromRGBO(243, 246, 250, 1)),
                      child: DropdownButton(
                        value: methodChoose,
                        onChanged: (newValue) {
                          setState(() {
                            methodChoose = newValue;
                          });
                        },
                        isExpanded: true,
                        underline: SizedBox(),
                        items: paymentMethodList.map((valueItem) {
                          return DropdownMenuItem(
                              value: valueItem, child: Text(valueItem));
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'How long do you want to save?',
                        style: TextStyle(
                            color: Color(0xff4F4F4F),
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      children: [
                        Flexible(
                          flex: 1,
                          child:  textField(
                            controller: _startDateController,
                            isHiddenPssword: false,
                            keyType: TextInputType.number,
                            hintText: 'start date',
                            onChangedValue: (value) {
                              startDate = value;
                            },
                          ),
                        ),
                        SizedBox(width: size.height * 0.02),
                        Flexible(
                          flex: 1,
                          child: textField(
                            controller: _endDateController,
                            isHiddenPssword: false,
                            keyType: TextInputType.number,
                            hintText: 'end date',
                            onChangedValue: (value) {
                              endDate = value;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'How about a little customization?',
                        style: TextStyle(
                            color: Color(0xff4F4F4F),
                            fontSize: size.width * 0.035,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Container(
                      height: size.height * 0.07,
                      width: size.width * 0.9,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff7B61FF),
                                  borderRadius: BorderRadius.circular(11)),
                            ),
                          ),
                          SizedBox(width: size.height * 0.02),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffF79E1B),
                                  borderRadius: BorderRadius.circular(11)),
                            ),
                          ),
                          SizedBox(width: size.height * 0.02),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffF4818B),
                                  borderRadius: BorderRadius.circular(11)),
                            ),
                          ),
                          SizedBox(width: size.height * 0.02),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff3B5CA2),
                                  borderRadius: BorderRadius.circular(11)),
                            ),
                          ),
                          SizedBox(width: size.height * 0.02),
                          Expanded(
                            flex: 1,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff68DEDD),
                                  borderRadius: BorderRadius.circular(11)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        '* choose a color',
                        style: TextStyle(
                            color: Color(0xff828282),
                            fontSize: size.width * 0.03,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.08),
            InkWell(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Container(
                  height: size.height * 0.05,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xff003FA4)),
                  child: Center(
                    child:Text(
                        'Start saving',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * 0.04,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              onTap: () {
                _saveGoalsModal(context);
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      )),
    );
  }

  void _saveGoalsModal(context) {
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
              height: size.height * 0.35,
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
                  Center(
                      child: Column(
                    children: [
                      Container(
                        height: size.height * 0.1,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/done.png'),
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * 0.01),
                      Text(
                          'You`ve successfully\n'
                          'added a savings goal',
                          style: TextStyle(
                              color: Color(0xff343C6B),
                              fontSize: size.width * 0.04,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: size.height * 0.03),
                      InkWell(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Container(
                            height: size.height * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color(0xff003FA4)),
                            child: Center(
                              child:  Text(
                                  'View goals',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  )),
                ],
              ),
            ),
          );
        });
  }
}

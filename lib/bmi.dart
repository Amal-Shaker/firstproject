import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_widget/resulttext.dart';
import 'custom_widget/textfeild.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final mycontroller = TextEditingController();
  final masscontroller = TextEditingController();
  String typeweight = '';
  double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'), fit: BoxFit.fill)),
          child: Padding(
            padding: EdgeInsets.only(top: 40.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'BMI Calculator',
                    style: TextStyle(color: Color(0xFFFCC91C)),
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFieldWidget(
                        controller: mycontroller, hintText: 'Height'),
                    SizedBox(
                      width: 60.w,
                    ),
                    TextFieldWidget(
                        controller: masscontroller, hintText: 'Mass')
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.w, right: 30.w),
                  child: RaisedButton(
                      color: Color(0xFF1C1C1C),
                      child: Text(
                        'Calculate',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40.sp,
                            color: Color(0xFFFCC91C)),
                      ),
                      onPressed: () {
                        setState(() {
                          result = (double.parse(masscontroller.text) /
                              pow((double.parse(mycontroller.text) / 100), 2));
                          result = double.parse(result.toStringAsFixed(2));

                          result <= 18.5
                              ? typeweight = 'Under Weight'
                              : result <= 24.9
                                  ? typeweight = 'Normal Weight'
                                  : result <= 29.9
                                      ? typeweight = 'Over Weight'
                                      : typeweight = 'Obesity';
                        });
                      }),
                ),
                SizedBox(
                  height: 40.h,
                ),
                ResultTextWidget(inputText: '${result ?? (1 - 1)}'),
                SizedBox(
                  height: 40.h,
                ),
                ResultTextWidget(inputText: typeweight),
              ],
            ),
          )),
    ));
  }
}

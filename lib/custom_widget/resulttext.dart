import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResultTextWidget extends StatelessWidget {
  String inputText;
  ResultTextWidget({this.inputText});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        inputText,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xFFFCC91C),
            fontSize: 40.sp),
      ),
    );
  }
}

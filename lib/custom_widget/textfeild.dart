import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  TextEditingController controller;
  String hintText;
  TextFieldWidget({this.controller, this.hintText});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 30.w),
        child: TextField(
          keyboardType: TextInputType.number,
          controller: controller,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color(0xFFFCC91C),
              fontSize: 40.sp),
          decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
              hintStyle: TextStyle(
                  color: Colors.grey[300],
                  fontWeight: FontWeight.bold,
                  fontSize: 40.sp)),
        ),
      ),
    );
  }
}

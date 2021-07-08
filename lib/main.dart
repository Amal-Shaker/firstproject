import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bmi.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: Size(412, 844),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BMI(),
      ),
    ),
  );
}

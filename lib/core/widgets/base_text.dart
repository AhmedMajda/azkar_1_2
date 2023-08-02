import 'package:flutter/material.dart';

import '../resources/manager_color.dart';
import '../resources/manager_font size.dart';
import '../resources/manager_font weiht.dart';
import '../resources/manager_font.dart';
import '../resources/manager_string.dart';


Text baseText({
  String? text,
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
}) {
  return Text(
    text ?? ManagerStrings.appName,
    style: TextStyle(
      fontSize: fontSize ?? ManagerFontSizes.s26,
      fontWeight: fontWeight ?? ManagerFontWeight.w600,
      fontFamily: ManagerFontFamily.appFont,
      color: color ?? ManagerColors.white,
    ),
  );
}
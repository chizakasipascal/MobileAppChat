import 'package:Xyslab/utils/colors.dart';
import 'package:flutter/material.dart';
import 'font_family.dart';

final ThemeData themeData = ThemeData(
  backgroundColor: WhiteColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: Colors.red,
  primaryColor: GreenColor,
  accentColor: GreenColor.withOpacity(.5),
  cursorColor: Colors.black,
  fontFamily: FontFamily.chata,
  splashColor: GreenColor,
);

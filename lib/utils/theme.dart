import 'package:flutter/material.dart';
import 'package:medhub/res/color.dart';
import 'package:medhub/res/fonts.dart';

final myTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColor.primary,
    primary: AppColor.primary,
  ),
  fontFamily: Fonts.overpass,
);

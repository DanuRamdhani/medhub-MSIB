import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/fonts.dart';

final myTheme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColor.primary,
    primary: AppColor.primary,
  ),
  fontFamily: Fonts.overpass,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: AppColor.primary),
    titleTextStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
  ),
);

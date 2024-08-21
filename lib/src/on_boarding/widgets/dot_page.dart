import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';

Widget buildDot(int index, int currentIndex, BuildContext context) {
  return Container(
    height: 5,
    width: 5,
    margin: const EdgeInsets.only(right: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: currentIndex == index ? AppColor.secondary : AppColor.grey,
    ),
  );
}

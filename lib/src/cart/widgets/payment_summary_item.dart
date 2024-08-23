import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';

class PaymentSummaryItem extends StatelessWidget {
  const PaymentSummaryItem({
    super.key,
    required this.leftText,
    required this.rightText,
  });

  final String leftText;
  final String rightText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leftText,
          style: TextStyle(
            color: AppColor.fontGrey,
          ),
        ),
        Text(
          rightText,
        ),
      ],
    );
  }
}

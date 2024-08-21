import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';

class MedhubFont extends StatelessWidget {
  const MedhubFont({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4).copyWith(top: 2),
      decoration: BoxDecoration(
        color: AppColor.orange,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        'MedHub',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColor.primary,
        ),
      ),
    );
  }
}

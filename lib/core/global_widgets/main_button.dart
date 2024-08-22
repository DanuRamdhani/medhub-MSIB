import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColor.whiteBg,
          backgroundColor: AppColor.primary,
          textStyle: const TextStyle(
            letterSpacing: 0.2,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}

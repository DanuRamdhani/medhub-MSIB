import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';

class SecondButton extends StatelessWidget {
  const SecondButton({super.key, required this.text, required this.image});

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: AppColor.grey),
          textStyle: const TextStyle(
            letterSpacing: 0.2,
            fontSize: 13,
            fontWeight: FontWeight.w700,
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image, height: 16),
            const SizedBox(width: 16),
            Text(text),
          ],
        ),
      ),
    );
  }
}

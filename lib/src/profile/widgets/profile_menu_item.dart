import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';

class ProfileMenuItem extends StatelessWidget {
  const ProfileMenuItem({super.key, required this.icon, required this.name});

  final String icon;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(icon, width: 24, height: 24),
            const SizedBox(width: 16),
            Text(
              name,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, size: 14),
            const SizedBox(width: 24),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 40),
          child: Divider(
            color: AppColor.grey,
            height: 32,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Danu Ramdhani',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '05 August 2024',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: AppColor.fontGrey,
              ),
            ),
          ],
        ),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.yellow, size: 16),
            Text(
              '05 August 2024',
              style: TextStyle(
                fontSize: 13,
                color: AppColor.fontGrey,
              ),
            ),
          ],
        ),
        const SizedBox(height: 6),
        Text(
          'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas ',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: AppColor.fontGrey,
          ),
        ),
      ],
    );
  }
}

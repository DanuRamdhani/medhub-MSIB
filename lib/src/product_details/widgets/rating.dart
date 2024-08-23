import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 2,
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    '4.4',
                    style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Icon(Icons.star, color: Colors.yellow, size: 30),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                '923 Ratings and 257 Reviews',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14,
                  color: AppColor.fontGrey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 16),
        Container(
          width: 1,
          height: 90,
          decoration: BoxDecoration(
            color: AppColor.grey,
          ),
        ),
        const SizedBox(width: 8),
        Flexible(
          flex: 5,
          child: Column(
            children: [
              buildRatingPercent('5', 67),
              buildRatingPercent('4', 90),
              buildRatingPercent('3', 12),
              buildRatingPercent('2', 2),
              buildRatingPercent('1', 0),
            ],
          ),
        ),
      ],
    );
  }
}

Widget buildRatingPercent(String star, double percent) {
  return Row(
    children: [
      Text(
        star,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 14,
          color: AppColor.fontGrey,
        ),
      ),
      const Icon(Icons.star_rate_rounded, color: Colors.yellow, size: 16),
      const SizedBox(width: 8),
      Stack(
        children: [
          Container(
            height: 3,
            width: 120,
            color: AppColor.grey,
          ),
          Container(
            height: 3,
            width: 120 * (percent / 100),
            color: AppColor.secondary,
          ),
        ],
      ),
      Text(
        '$percent%',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 14,
          color: AppColor.fontGrey,
        ),
      ),
    ],
  );
}

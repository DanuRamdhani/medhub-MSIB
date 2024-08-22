import 'package:flutter/material.dart';

class CategoryButtonWidget extends StatelessWidget {
  const CategoryButtonWidget({
    super.key,
    required this.name,
    required this.icon,
    required this.colors,
    required this.ontap,
  });

  final String name;
  final String icon;
  final List<Color> colors;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            height: 48,
            width: 48,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: colors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(icon),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

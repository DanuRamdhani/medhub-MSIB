import 'dart:ui';

import 'package:medhub/core/res/icons.dart';

class CategoryButton {
  final String name;
  final String icon;
  final List<Color> colors;

  CategoryButton({
    required this.name,
    required this.icon,
    required this.colors,
  });
}

List<CategoryButton> topCategories = [
  CategoryButton(
    name: 'Dental',
    icon: dental,
    colors: [
      const Color.fromRGBO(255, 149, 152, 1),
      const Color.fromRGBO(255, 112, 167, 1),
    ],
  ),
  CategoryButton(
    name: 'Wellness',
    icon: wellness,
    colors: [
      const Color.fromRGBO(25, 229, 165, 1),
      const Color.fromRGBO(21, 189, 146, 1),
    ],
  ),
  CategoryButton(
    name: 'Homeo',
    icon: homeo,
    colors: [
      const Color.fromRGBO(255, 192, 111, 1),
      const Color.fromRGBO(255, 121, 58, 1),
    ],
  ),
  CategoryButton(
    name: 'Eye Care',
    icon: eyecare,
    colors: [
      const Color.fromRGBO(77, 183, 255, 1),
      const Color.fromRGBO(62, 125, 255, 1),
    ],
  ),
  CategoryButton(
    name: 'Skin & Hair',
    icon: skinHair,
    colors: [
      const Color.fromRGBO(130, 130, 130, 1),
      const Color.fromRGBO(9, 15, 71, 1),
    ],
  ),
];

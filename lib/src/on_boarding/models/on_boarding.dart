import 'package:medhub/core/res/images.dart';

class OnBoarding {
  final String image;
  final String title;
  final String description;

  OnBoarding({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<OnBoarding> slides = [
  OnBoarding(
    image: onBoarding1,
    title: 'View and buy Medicine online',
    description:
        'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
  ),
  OnBoarding(
    image: onBoarding2,
    title: 'Online medical & Healthcare',
    description:
        'Etiam mollis metus non purus faucibus sollicitudin. Pellentesque sagittis mi. Integer.',
  ),
];

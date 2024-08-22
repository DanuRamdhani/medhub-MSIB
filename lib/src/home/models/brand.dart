import 'package:medhub/core/res/images.dart';

class Brand {
  final String name;
  final String img;

  Brand({required this.name, required this.img});
}

List<Brand> brands = [
  Brand(name: 'Himalaya Wellnes', img: brand1),
  Brand(name: 'Achu Check', img: brand2),
  Brand(name: 'Vlcc', img: brand3),
  Brand(name: 'Protinex', img: brand4),
];

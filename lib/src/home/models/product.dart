// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:medhub/core/res/images.dart';

class Product {
  final String title;
  final String img;
  final String rating;
  final String price;
  final bool isSale;
  final bool isDiscount;

  Product({
    required this.title,
    required this.img,
    required this.rating,
    required this.price,
    required this.isSale,
    required this.isDiscount,
  });
}

List<Product> dealsOfTheDay = [
  Product(
    title: 'Cetaphil Gentle Skin Cleanser',
    img: product1,
    rating: '4.5',
    price: '200.000',
    isSale: false,
    isDiscount: false,
  ),
  Product(
    title: 'Omron HEM-8712 BP Monitor',
    img: product2,
    rating: '4.0',
    price: '450.000',
    isSale: false,
    isDiscount: false,
  ),
  Product(
    title: 'Check Active Test Strip',
    img: product3,
    rating: '4.8',
    price: '100.000',
    isSale: false,
    isDiscount: false,
  ),
];

List<Product> allProducts = [
  Product(
    title: 'Skin Cleanser',
    img: product4,
    rating: '5.0',
    price: '200.000',
    isSale: true,
    isDiscount: false,
  ),
  Product(
    title: 'Accu-check Active Test Strip',
    img: product6,
    rating: '3.5',
    price: '266.000',
    isSale: false,
    isDiscount: true,
  ),
  Product(
    title: 'Accu Test Strip',
    img: product5,
    rating: '4.5',
    price: '240.000',
    isSale: false,
    isDiscount: false,
  ),
  Product(
    title: 'Accu-check Skin Cleanser',
    img: product7,
    rating: '4.5',
    price: '200.000',
    isSale: false,
    isDiscount: false,
  ),
];

List<Product> diabeticDiet = [
  Product(
    title: 'Skin Cleanser',
    img: product7,
    rating: '4.7',
    price: '200.000',
    isSale: false,
    isDiscount: false,
  ),
  Product(
    title: 'Accu Test Strip',
    img: product8,
    rating: '3.5',
    price: '200.000',
    isSale: false,
    isDiscount: false,
  ),
  Product(
    title: 'Accu-check Active Test Strip',
    img: product9,
    rating: '2.0',
    price: '80.000',
    isSale: false,
    isDiscount: false,
  ),
];

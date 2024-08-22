import 'package:flutter/material.dart';
import 'package:medhub/src/home/models/product.dart';
import 'package:medhub/src/home/widgets/product_card.dart';

class ProductsItems extends StatelessWidget {
  const ProductsItems({super.key, required this.listProducts});

  final List<Product> listProducts;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          listProducts.length,
          (index) {
            final product = listProducts[index];

            return Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: index == listProducts.length - 1 ? 24 : 0,
              ),
              child: ProductCard(product: product),
            );
          },
        ),
      ),
    );
  }
}

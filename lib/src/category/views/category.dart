import 'package:flutter/material.dart';
import 'package:medhub/src/home/models/product.dart';
import 'package:medhub/src/home/widgets/offers_content.dart';
import 'package:medhub/src/home/widgets/product_card.dart';
import 'package:medhub/src/category/widgets/products_small_items.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diabetes Care'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: OffersContent(),
                ),
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Diabetic Diet',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const ProductsSmallItems(),
                const SizedBox(height: 16),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'All Products',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: SizedBox.fromSize(
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: .63,
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 16,
                      ),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: allProducts.length,
                      itemBuilder: (context, index) {
                        final product = allProducts[index];
                  
                        return ProductCard(product: product);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

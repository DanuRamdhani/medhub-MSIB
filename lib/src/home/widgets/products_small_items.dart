import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/src/home/models/product.dart';

class ProductsSmallItems extends StatelessWidget {
  const ProductsSmallItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          diabeticDiet.length,
          (index) {
            final product = diabeticDiet[index];

            return Padding(
              padding: EdgeInsets.only(
                left: index == 0 ? 24 : 16,
                right: index == diabeticDiet.length - 1 ? 24 : 0,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: AppColor.whiteBlueBg,
                  width: 110,
                  child: Column(
                    children: [
                      Image.asset(
                        product.img,
                        width: 110,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16).copyWith(bottom: 0),
                        child: Text(
                          product.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

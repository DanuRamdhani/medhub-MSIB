import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/src/home/models/brand.dart';

class BrandsItems extends StatelessWidget {
  const BrandsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          brands.length,
          (index) {
            final brand = brands[index];

            return Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: index == brands.length - 1 ? 24 : 0,
              ),
              child: SizedBox(
                width: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColor.whiteBg,
                        borderRadius: BorderRadius.circular(80),
                      ),
                      child: Image.asset(brand.img),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      brand.name,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

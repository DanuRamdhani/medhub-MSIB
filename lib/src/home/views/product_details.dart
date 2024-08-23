import 'package:flutter/material.dart';
import 'package:medhub/core/global_widgets/main_button.dart';
import 'package:medhub/core/helper/context_extension.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';
import 'package:medhub/core/res/images.dart';
import 'package:medhub/core/routes/routes_name.dart';
import 'package:medhub/src/home/widgets/rating.dart';
import 'package:medhub/src/home/widgets/review.dart';
import 'package:medhub/src/on_boarding/widgets/dot_page.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.whiteBg,
      appBar: AppBar(
        backgroundColor: AppColor.whiteBg,
        actions: [
          Image.asset(notifAppbar, width: 24, height: 24, color: Colors.black),
          const SizedBox(width: 16),
          Image.asset(chartAppbar, width: 24, height: 24, color: Colors.black),
          const SizedBox(width: 24),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24).copyWith(top: 0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sugar Free Gold Low Calories',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Etiam mollis metus non purus',
                    style: TextStyle(
                      fontSize: 14,
                      color: AppColor.fontGrey,
                    ),
                  ),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      product5,
                      height: 140,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => buildDot(index, currentIndex, context),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Rp 200.000',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Etiam mollis',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColor.fontGrey,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: [
                          Image.asset(
                            plus,
                            height: 20,
                            color: AppColor.secondary,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Add to cart',
                            style: TextStyle(
                              color: AppColor.secondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Divider(),
                  const SizedBox(height: 8),
                  const Text(
                    'Package Size',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: List.generate(
                      3,
                      (index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 8),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 16),
                          decoration: BoxDecoration(
                            color: AppColor.secondary.withOpacity(.05),
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(color: AppColor.secondary),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'Rp 252.000',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w700,
                                  color: AppColor.secondary,
                                ),
                              ),
                              Text(
                                '500 pellets',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColor.secondary,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Product Details',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: AppColor.fontGrey,
                    ),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Rating and Reviews',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Rating(),
                  const SizedBox(height: 40),
                  const Review(),
                  const SizedBox(height: 64),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MainButton(
                text: 'GO TO CART',
                onPressed: () {
                  context.pushNamed(AppRoute.cart);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

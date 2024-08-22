import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';
import 'package:medhub/core/res/images.dart';
import 'package:medhub/src/home/models/product.dart';
import 'package:medhub/src/home/widgets/brands_items.dart';
import 'package:medhub/src/home/widgets/custom_carousel.dart';
import 'package:medhub/src/home/widgets/custom_search_bar.dart';
import 'package:medhub/src/home/widgets/products_items.dart';
import 'package:medhub/src/home/widgets/top_categories_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.whiteBlueBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Image.asset(
                bgBlue,
                fit: BoxFit.contain,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24).copyWith(bottom: 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColor.whiteBg,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: const CircleAvatar(
                                backgroundImage: AssetImage(people),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(notifAppbar, width: 24, height: 24),
                            const SizedBox(width: 16),
                            Image.asset(chartAppbar, width: 24, height: 24),
                          ],
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Hi, Danu',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: AppColor.whiteBg,
                          ),
                        ),
                        Text(
                          'Welcome to MedHub',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: AppColor.whiteBg,
                          ),
                        ),
                        const SizedBox(height: 24),
                        const CustomSearchBar(),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Top Categories',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const TopCategoriesItems(),
                  const SizedBox(height: 40),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: CustomCarousel(),
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Deals of the Day',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          'More',
                          style: TextStyle(
                            color: AppColor.secondary,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  ProductsItems(listProducts: dealsOfTheDay),
                  const SizedBox(height: 24),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Featured Brands',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const BrandsItems(),
                  const SizedBox(height: 16),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

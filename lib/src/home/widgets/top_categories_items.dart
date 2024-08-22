import 'package:flutter/material.dart';
import 'package:medhub/core/helper/context_extension.dart';
import 'package:medhub/core/routes/routes_name.dart';
import 'package:medhub/src/home/models/category_button.dart';
import 'package:medhub/src/home/widgets/category_button.dart';

class TopCategoriesItems extends StatelessWidget {
  const TopCategoriesItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          topCategories.length,
          (index) {
            final category = topCategories[index];

            return Padding(
              padding: EdgeInsets.only(
                left: 24,
                right: index == topCategories.length - 1 ? 24 : 0,
              ),
              child: CategoryButtonWidget(
                ontap: () => context.pushNamed(AppRoute.category),
                name: category.name,
                icon: category.icon,
                colors: category.colors,
              ),
            );
          },
        ),
      ),
    );
  }
}

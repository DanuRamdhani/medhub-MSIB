import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      shadowColor: const WidgetStatePropertyAll(
        Color.fromARGB(40, 0, 0, 0),
      ),
      backgroundColor: WidgetStatePropertyAll(AppColor.whiteBg),
      leading: Icon(Icons.search_outlined, color: AppColor.fontGrey),
      padding: const WidgetStatePropertyAll(EdgeInsets.only(left: 16)),
      onTap: () {},
      hintText: 'Search Medicine & Healthcare products',
      hintStyle: WidgetStatePropertyAll(
        TextStyle(
          fontSize: 13,
          color: AppColor.fontGrey,
          letterSpacing: 0,
        ),
      ),
    );
  }
}

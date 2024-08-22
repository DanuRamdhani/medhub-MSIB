import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/images.dart';

class OffersContent extends StatelessWidget {
  const OffersContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(adv),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 180,
              child: Text(
                'Save extra on every order',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: AppColor.secondary,
                ),
              ),
            ),
            SizedBox(
              width: 160,
              child: Text(
                'Save extra on every order on oerder on every',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: AppColor.fontGrey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

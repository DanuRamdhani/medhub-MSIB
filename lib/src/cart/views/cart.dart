import 'package:flutter/material.dart';
import 'package:medhub/core/global_widgets/main_button.dart';
import 'package:medhub/core/helper/context_extension.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';
import 'package:medhub/core/routes/routes_name.dart';
import 'package:medhub/src/cart/widgets/cart_item.dart';
import 'package:medhub/src/cart/widgets/payment_summary_item.dart';
import 'package:medhub/src/home/models/product.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24).copyWith(top: 0),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '2 Items in your cart',
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: AppColor.fontGrey,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.add, color: AppColor.secondary, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          'Add more',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: AppColor.secondary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                CartItem(product: allProducts[0]),
                CartItem(product: allProducts[1]),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColor.grey),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Row(
                    children: [
                      Image.asset(label, height: 20),
                      const SizedBox(width: 16),
                      Text(
                        '1 Coupon applied',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: AppColor.secondary,
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(close, height: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'Payment Summary',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                const PaymentSummaryItem(
                  leftText: 'Order Total',
                  rightText: 'Rp 228.800',
                ),
                const SizedBox(height: 8),
                const PaymentSummaryItem(
                  leftText: 'Items Discount',
                  rightText: '- Rp 28.800',
                ),
                const SizedBox(height: 8),
                const PaymentSummaryItem(
                  leftText: 'Coupon Discount',
                  rightText: '- Rp 15.800',
                ),
                const SizedBox(height: 8),
                const PaymentSummaryItem(
                  leftText: 'Shipping',
                  rightText: 'Free',
                ),
                const SizedBox(height: 16),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'Rp 138.000',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MainButton(
                text: 'Place Order @ Rp 185.000',
                onPressed: () {
                  context.pushNamed(AppRoute.checkout);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';
import 'package:medhub/src/home/models/product.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 88,
          width: double.infinity,
          child: Row(
            children: [
              Image.asset(product.img, fit: BoxFit.cover),
              const SizedBox(width: 16),
              Expanded(
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Text(
                            product.title,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Text(
                            'bottle of 500 pellets',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 13,
                              color: AppColor.fontGrey,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Rp ${product.price}',
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(241, 255, 234, 1),
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.remove),
                                    color: AppColor.whiteBg,
                                    style: IconButton.styleFrom(
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      backgroundColor: AppColor.secondary,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  const Text('1'),
                                  const SizedBox(width: 8),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add),
                                    color: AppColor.whiteBg,
                                    style: IconButton.styleFrom(
                                      tapTargetSize:
                                          MaterialTapTargetSize.shrinkWrap,
                                      backgroundColor: AppColor.primary,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(close, height: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(color: AppColor.grey, height: 24),
      ],
    );
  }
}

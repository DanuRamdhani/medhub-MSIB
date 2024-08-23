import 'package:flutter/material.dart';
import 'package:medhub/core/global_widgets/main_button.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/routes/routes_name.dart';
import 'package:medhub/src/checkout/widgets/delivery_address.dart';
import 'package:medhub/src/checkout/widgets/payment_method.dart';

class ChekchoutPage extends StatefulWidget {
  const ChekchoutPage({super.key});

  @override
  State<ChekchoutPage> createState() => _ChekchoutPageState();
}

class _ChekchoutPageState extends State<ChekchoutPage> {
  var selectedAddress = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24).copyWith(top: 0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '2 Items in your cart',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: AppColor.fontGrey,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Add more',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w300,
                              color: AppColor.secondary,
                            ),
                          ),
                          const Text(
                            'Rp 185.000',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Delivery Address',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  DeliveryAddress(
                    selectedAddres: selectedAddress,
                    value: 1,
                    onChanged: (value) {
                      setState(() {
                        selectedAddress = value!;
                      });
                    },
                    title: 'Home',
                    subtitleOne: '(031) 555-024',
                    subtitleTwo: 'Jl. Rajawali No. 02, Surabaya',
                  ),
                  const SizedBox(height: 8),
                  DeliveryAddress(
                    selectedAddres: selectedAddress,
                    value: 2,
                    onChanged: (value) {
                      setState(() {
                        selectedAddress = value!;
                      });
                    },
                    title: 'Office',
                    subtitleOne: '(031) 555-024',
                    subtitleTwo: 'Jl. Gajah Mada No. 05, Sidoarjo',
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.add, color: AppColor.secondary, size: 16),
                      const SizedBox(width: 4),
                      Text(
                        'Add Address',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: AppColor.secondary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Payment method',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const PaymentMethod(),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MainButton(
                text: 'Pay Now @ Rp 185.000',
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    AppRoute.successPay,
                    (route) => route.settings.name == AppRoute.mainWrapper,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

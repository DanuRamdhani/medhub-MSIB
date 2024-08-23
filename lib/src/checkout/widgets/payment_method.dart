import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  int selectedPaymentMethod = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        children: [
          paymentMethodItem(
            img: ovo,
            name: 'OVO',
            value: 1,
            selectedPaymentMethod: selectedPaymentMethod,
            onChanged: (value) {
              setState(() {
                selectedPaymentMethod = value!;
              });
            },
          ),
          const SizedBox(height: 16),
          paymentMethodItem(
            img: dana,
            name: 'Dana',
            value: 2,
            selectedPaymentMethod: selectedPaymentMethod,
            onChanged: (value) {
              setState(() {
                selectedPaymentMethod = value!;
              });
            },
          ),
          const SizedBox(height: 16),
          paymentMethodItem(
            img: shopeepay,
            name: 'ShopeePay',
            value: 3,
            selectedPaymentMethod: selectedPaymentMethod,
            onChanged: (value) {
              setState(() {
                selectedPaymentMethod = value!;
              });
            },
          ),
          const SizedBox(height: 16),
          paymentMethodItem(
            img: gopay,
            name: 'GoPay',
            value: 4,
            selectedPaymentMethod: selectedPaymentMethod,
            onChanged: (value) {
              setState(() {
                selectedPaymentMethod = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}

Widget paymentMethodItem({
  required String img,
  required String name,
  required int value,
  required int selectedPaymentMethod,
  required Function(int?) onChanged,
}) {
  return Row(
    children: [
      Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.grey),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Image.asset(img, width: 28, height: 28),
      ),
      const SizedBox(width: 16),
      Text(
        name,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
      const Spacer(),
      Radio(
        value: value,
        groupValue: selectedPaymentMethod,
        onChanged: onChanged,
        activeColor: AppColor.secondary,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
    ],
  );
}

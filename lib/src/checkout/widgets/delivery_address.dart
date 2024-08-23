import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';

class DeliveryAddress extends StatelessWidget {
  const DeliveryAddress({
    super.key,
    required this.selectedAddres,
    required this.value,
    required this.onChanged,
    required this.title,
    required this.subtitleOne,
    required this.subtitleTwo,
  });

  final int selectedAddres;
  final int value;
  final void Function(int?) onChanged;
  final String title;
  final String subtitleOne;
  final String subtitleTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.grey),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Radio(
            value: value,
            groupValue: selectedAddres,
            onChanged: onChanged,
            activeColor: AppColor.secondary,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                subtitleOne,
                style: TextStyle(
                  fontSize: 13,
                  color: AppColor.fontGrey,
                ),
              ),
              Text(
                subtitleTwo,
                style: TextStyle(
                  fontSize: 13,
                  color: AppColor.fontGrey,
                ),
              ),
            ],
          ),
          const Spacer(),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(pen, height: 20),
          ),
        ],
      ),
    );
  }
}

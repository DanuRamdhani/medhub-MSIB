import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';
import 'package:medhub/core/res/images.dart';
import 'package:medhub/src/profile/widgets/profile_menu_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 40, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'My Profile',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 4,
                          offset: Offset(0, 4),
                        ),
                      ],
                      border: Border.all(
                        color: AppColor.whiteBg,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const CircleAvatar(
                      radius: 36,
                      backgroundImage: AssetImage(people),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi, Danu Ramdhani',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        'Welcome to MedHub',
                        style: TextStyle(
                          color: AppColor.fontGrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 40),
              const ProfileMenuItem(
                  icon: privateAccount, name: 'Private Account'),
              const ProfileMenuItem(icon: myConsult, name: 'My Consults'),
              const ProfileMenuItem(icon: myOrders, name: 'My Orders'),
              const ProfileMenuItem(icon: billing, name: 'Billing'),
              const ProfileMenuItem(icon: faq, name: 'Faq'),
              const ProfileMenuItem(icon: settings, name: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}

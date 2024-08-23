import 'package:flutter/material.dart';
import 'package:medhub/core/res/color.dart';
import 'package:medhub/core/res/icons.dart';
import 'package:medhub/src/home/views/home.dart';
import 'package:medhub/src/profile/views/profile.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int currentIndex = 0;

  final pages = [
    const HomePage(),
    const Center(child: Text('Page 2')),
    const Center(child: Text('Page 3')),
    const Center(child: Text('Page 4')),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColor.secondary,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(home, height: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(notification, height: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColor.primary,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Image.asset(plus, height: 20),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(chart, height: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(user, height: 20),
            label: 'Home',
          ),
        ],
        currentIndex: currentIndex,
        onTap: (value) => setState(
          () => currentIndex = value,
        ),
      ),
    );
  }
}

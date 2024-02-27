import 'package:car_application/view/home_screen.dart';
import 'package:car_application/view/safety_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'controller/bottom_navbar_controller.dart';
import 'view/interior_page.dart';

// ignore: must_be_immutable
class CustomButtomNavbar extends ConsumerWidget {
  CustomButtomNavbar({super.key});

  List<Widget> pages = [
    HomeScreen(),
    const InteriorPage(),
    const SafetySecurityPage(),
    const SafetySecurityPage(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentIndexProvider);
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        currentIndex: currentIndex,
        onTap: (value) {
          ref.read(currentIndexProvider.notifier).state = value;
        },
        items: [
          BottomNavigationBarItem(
            icon: currentIndex == 0
                ? Image.asset(
                    'assets/icons/Primary.png',
                  )
                : Image.asset(
                    'assets/icons/house.png',
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: currentIndex == 1
                ? Image.asset(
                    'assets/icons/selected_wrench.png',
                  )
                : Image.asset(
                    'assets/icons/wrench.png',
                  ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/logo1.png',
              color: currentIndex == 2 ? Colors.black : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/headset.png',
              color: currentIndex == 3 ? Colors.black : Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/icons/User.png',
              color: currentIndex == 4 ? Colors.black : Colors.black,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}

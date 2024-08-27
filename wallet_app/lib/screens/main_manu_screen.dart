import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'home_screen.dart';
import 'notification_screen.dart';
import 'profile_screen.dart';
import 'transaction_screen.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key});

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          _buildContent(currentPage),
          _customBottomNavigation(),
        ],
      ),
    );
  }

  _buildContent(int currentPage) {
    switch (currentPage) {
      case 0:
        return const HomeScreen();
      case 1:
        return const TransactionScreen();
      case 2:
        return const NotificationScreen();
      case 3:
        return const ProfileScreen();

      default:
        const HomeScreen();
    }
  }

  Widget _customBottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 65,
        width: double.infinity,
        margin: const EdgeInsets.only(
          right: 30,
          left: 30,
          bottom: 30,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              spreadRadius: 2,
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 6),
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavigationItem(
              index: 0,
              icon: Icons.home_filled,
            ),
            _buildNavigationItem(
              index: 1,
              icon: Icons.bar_chart_sharp,
            ),
            _buildNavigationItem(
              index: 2,
              icon: Icons.notifications,
            ),
            _buildNavigationItem(
              index: 3,
              icon: Icons.person,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationItem({
    required IconData icon,
    required int index,
  }) {
    return InkWell(
      onTap: () {
        setState(() {
          currentPage = index;
        });
      },
      child: Icon(
        icon,
        size: 30,
        color: currentPage == index ? kPrimaryColor : Colors.grey,
      ),
    );
  }
}

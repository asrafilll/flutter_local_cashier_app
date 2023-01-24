import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_style.dart';
import 'package:personal_cashier_app/presentation/admin/chart_page.dart';
import 'package:personal_cashier_app/presentation/admin/home_page.dart';
import 'package:personal_cashier_app/presentation/admin/product_page.dart';

import 'setting_page.dart';

class AdminMainPage extends StatefulWidget {
  const AdminMainPage({super.key});

  @override
  State<AdminMainPage> createState() => _AdminMainPageState();
}

class _AdminMainPageState extends State<AdminMainPage> {
  int _selectedIndex = 0;

  void _onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _myPage = [
    AdminHomePage(),
    const AdminProductPage(),
    const AdminChartPage(),
    const AdminSettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myPage[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: kPrimaryColor,
        unselectedItemColor: kGreyColor,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.topic),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_cashier_app/client/client_home_page.dart';
import 'package:personal_cashier_app/client/client_new_order_page.dart';
import 'package:personal_cashier_app/client/client_settings_page.dart';
import 'package:personal_cashier_app/client/client_stock_product_page.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class ClientMainPage extends StatefulWidget {
  const ClientMainPage({super.key});

  @override
  State<ClientMainPage> createState() => _ClientMainPageState();
}

class _ClientMainPageState extends State<ClientMainPage> {
  int _selectedIndex = 0;

  void _onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _myPage = [
    const ClientHomePage(),
    const ClientNewOrderPage(),
    const ClientStockProductPage(),
    const ClientSettingsPage(),
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

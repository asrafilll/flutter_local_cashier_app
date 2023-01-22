import 'package:flutter/material.dart';
import 'package:personal_cashier_app/admin/component/dashboard_product_component.dart';
import 'package:personal_cashier_app/admin/component/dashboard_summary.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class AdminHomePage extends StatelessWidget {
  AdminHomePage({super.key});

  final List<Map<String, dynamic>> myFruit = [
    {
      'image': 'assets/products/apple.png',
      'name': 'Apel',
      'totalSold': 30,
    },
    {
      'image': 'assets/products/orange.png',
      'name': 'Jeruk',
      'totalSold': 20,
    },
    {
      'image': 'assets/products/watermelon.png',
      'name': 'Semangka',
      'totalSold': 10,
    },
    {
      'image': 'assets/products/chilli.png',
      'name': 'Cabe Merah',
      'totalSold': 50,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        controller: ScrollController(),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32,
            vertical: 44,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: kBlackColor,
                    ),
                  ),
                  Image.asset('assets/icon_dashboard.png'),
                ],
              ),
              const SizedBox(height: 30),
              const DashboardSummaryComponent(),
              const SizedBox(height: 39),
              const Text(
                'Products List',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: kDarkGreyColor,
                ),
              ),
              const SizedBox(height: 18),
              ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return DashboardProductComponent(myFruit: myFruit[index]);
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: myFruit.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}

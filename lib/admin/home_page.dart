import 'package:flutter/material.dart';
import 'package:personal_cashier_app/admin/component/dashboard_product_component.dart';
import 'package:personal_cashier_app/admin/component/dashboard_summary.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class AdminHomePage extends StatelessWidget {
  const AdminHomePage({super.key});

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
                itemBuilder: (context, index) =>
                    const DashboardProductComponent(),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}

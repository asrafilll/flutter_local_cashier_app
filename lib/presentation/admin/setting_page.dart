import 'package:flutter/material.dart';
import 'package:personal_cashier_app/admin/component/item_setting_component.dart';
import 'package:personal_cashier_app/core/app_style.dart';
import 'package:personal_cashier_app/core/component/custom_button.dart';
import 'package:personal_cashier_app/login_page.dart';

class AdminSettingPage extends StatelessWidget {
  const AdminSettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'assets/profile.png',
                    width: 73,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Admin John',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 33),
            const ItemSettingComponent(
              icon: 'assets/icons/icon_edit.png',
              title: 'Edit Account Info',
            ),
            const ItemSettingComponent(
              icon: 'assets/icons/icon_address.png',
              title: 'Address Info',
            ),
            const ItemSettingComponent(
              icon: 'assets/icons/icon_payment.png',
              title: 'Payment Method',
            ),
            const ItemSettingComponent(
              icon: 'assets/icons/icon_rewards.png',
              title: 'Rewards or Coupons',
            ),
            const ItemSettingComponent(
              icon: 'assets/icons/icon_settings.png',
              title: 'Settings',
            ),
            const ItemSettingComponent(
              icon: 'assets/icons/icon_policy.png',
              title: 'Privacy Policy',
            ),
            const ItemSettingComponent(
              icon: 'assets/icons/icon_about.png',
              title: 'About PersonalCashier Apps',
            ),
            const SizedBox(height: 28),
            CustomButton(
              width: double.infinity,
              bgColor: Colors.white,
              fgColor: kRedColor,
              borderColor: kRedColor,
              title: 'Logout',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (builder) => const LoginPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

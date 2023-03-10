import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_style.dart';
import 'package:personal_cashier_app/core/component/custom_button.dart';

import 'presentation/admin/main.dart';
import 'presentation/client/main.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 608,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/login_screen_header.png',
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            'Personal Cashier App',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: kBlackColor,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Manfaatkan fitur-fitur cashier digital\ndengan mudah dalam genggaman anda.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kGreyColor,
            ),
          ),
          const SizedBox(height: 30),
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) => const ClientMainPage(),
                ),
              );
            },
            title: 'Login as Cashier',
            bgColor: kPrimaryColor,
          ),
          const SizedBox(height: 10),
          CustomButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (builder) => const AdminMainPage(),
                ),
              );
            },
            title: 'Login as Admin',
            bgColor: Colors.white,
            borderColor: kPrimaryColor,
            fgColor: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}

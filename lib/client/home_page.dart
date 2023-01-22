import 'package:flutter/material.dart';
import 'package:personal_cashier_app/client/component/client_add_product_component.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class ClientHomePage extends StatelessWidget {
  const ClientHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 60,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Selamat Datang',
                style: TextStyle(fontSize: 12, color: kGreyColor),
              ),
              const SizedBox(height: 2),
              const Text(
                'Warung SerbaTop',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        100,
                      ),
                      side: const BorderSide(
                        color: kGreyColor,
                      )),
                  elevation: 0,
                  foregroundColor: kGreyColor,
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Find Product',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Produk',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 12,
                      color: kGreyColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, build) =>
                    const ClientAddProductComponent(),
                separatorBuilder: (context, build) =>
                    const SizedBox(height: 20),
                itemCount: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}

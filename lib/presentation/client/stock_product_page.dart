import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_style.dart';
import 'package:personal_cashier_app/presentation/admin/component/stock_product_component.dart';

class ClientStockProductPage extends StatefulWidget {
  const ClientStockProductPage({super.key});

  @override
  State<ClientStockProductPage> createState() => _ClientStockProductPageState();
}

class _ClientStockProductPageState extends State<ClientStockProductPage> {
  final List<Map<String, dynamic>> myStock = [
    {
      'image': 'assets/products/apple.png',
      'name': 'Apel',
      'type': 'Buah',
      'stock': 20,
      'price': 10,
    },
    {
      'image': 'assets/products/watermelon.png',
      'name': 'Semangka',
      'type': 'Buah',
      'stock': 30,
      'price': 20,
    },
    {
      'image': 'assets/products/banana.png',
      'name': 'Pisang',
      'type': 'Buah',
      'stock': 10,
      'price': 5,
    },
    {
      'image': 'assets/products/chilli.png',
      'name': 'Cabe Merah',
      'type': 'Sayur',
      'stock': 100,
      'price': 50,
    },
    {
      'image': 'assets/products/tomato.png',
      'name': 'Tomat',
      'type': 'Sayur',
      'stock': 10,
      'price': 35,
    },
    {
      'image': 'assets/products/apple.png',
      'name': 'Apel',
      'type': 'Buah',
      'stock': 20,
      'price': 10,
    },
    {
      'image': 'assets/products/watermelon.png',
      'name': 'Semangka',
      'type': 'Buah',
      'stock': 30,
      'price': 20,
    },
    {
      'image': 'assets/products/banana.png',
      'name': 'Pisang',
      'type': 'Buah',
      'stock': 10,
      'price': 5,
    },
    {
      'image': 'assets/products/chilli.png',
      'name': 'Cabe Merah',
      'type': 'Sayur',
      'stock': 100,
      'price': 50,
    },
    {
      'image': 'assets/products/tomato.png',
      'name': 'Tomat',
      'type': 'Sayur',
      'stock': 10,
      'price': 35,
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
            vertical: 70,
            horizontal: 32,
          ),
          child: Column(
            children: [
              const Text(
                'Stock Product',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: kBlackColor,
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
                      'Find your Product or Code',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => StockProductComponent(
                  myStock: myStock[index],
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: myStock.length,
              )
            ],
          ),
        ),
      ),
    );
  }
}

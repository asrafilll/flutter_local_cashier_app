import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class ClientAddProductComponent extends StatelessWidget {
  const ClientAddProductComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 18,
      ),
      decoration: BoxDecoration(
        color: kLightGreyColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/products/apple.png',
                width: 45,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Apel',
                    style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Harga : \$15/Kg',
                    style: TextStyle(
                      color: kGreyColor,
                    ),
                  )
                ],
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kGreenColor,
              elevation: 0,
            ),
            onPressed: () {},
            child: Row(
              children: const [
                Text(
                  'Tambah',
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 6),
                Icon(
                  Icons.add,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

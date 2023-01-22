import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class DashboardProductComponent extends StatelessWidget {
  const DashboardProductComponent({
    super.key,
    required this.myFruit,
  });

  final Map<String, dynamic> myFruit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 8),
      decoration: BoxDecoration(
        color: kLightGreyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                myFruit['image'],
                width: 45,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myFruit['name'],
                    style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Total Penjualan : 30kg',
                    style: TextStyle(
                      color: kGreyColor,
                    ),
                  )
                ],
              ),
            ],
          ),
          const Icon(
            Icons.chevron_right,
            color: kDarkGreyColor,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class StockProductComponent extends StatelessWidget {
  const StockProductComponent({
    super.key,
    required this.myStock,
  });

  final Map<String, dynamic> myStock;

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
                myStock['image'],
                width: 45,
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    myStock['name'],
                    style: const TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    myStock['type'],
                    style: const TextStyle(
                      color: kGreyColor,
                    ),
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                myStock['stock'].toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
              RichText(
                text: TextSpan(
                    text: '\$',
                    style: const TextStyle(
                      color: kGreyColor,
                    ),
                    children: [
                      TextSpan(
                          text: myStock['price'].toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                            color: kBlackColor,
                          )),
                      const TextSpan(text: '/Kg')
                    ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

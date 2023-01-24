import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class DashboardSummaryComponent extends StatelessWidget {
  const DashboardSummaryComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Total Products',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: kDarkGreyColor,
              ),
            ),
            const Text(
              '128',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 32,
                color: kBlackColor,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0XFFECF5EE),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_scan_green.png',
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '+8.00%',
                    style: TextStyle(
                      color: Color(0XFF458F5A),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Stock in Hand',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: kDarkGreyColor,
              ),
            ),
            const Text(
              '2,350',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 32,
                color: kBlackColor,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color(0XFFD0F3FE),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_scan_blue.png',
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '+2.34%',
                    style: TextStyle(
                      color: Color(0XFF00B2EB),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

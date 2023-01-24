import 'package:flutter/material.dart';

class ItemSettingComponent extends StatelessWidget {
  const ItemSettingComponent({
    super.key,
    required this.icon,
    required this.title,
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  icon,
                ),
                const SizedBox(width: 14),
                Text(title),
              ],
            ),
            const Icon(
              Icons.chevron_right,
            ),
          ],
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}

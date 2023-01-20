import 'package:flutter/material.dart';
import 'package:personal_cashier_app/core/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.bgColor = kPrimaryColor,
    this.fgColor = Colors.white,
    this.borderColor,
    this.width = 240,
    this.height = 50,
  });

  final String title;
  final Color bgColor;
  final Color fgColor;
  final Color? borderColor;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: fgColor,
          elevation: 0,
          side: BorderSide(color: borderColor ?? bgColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () {},
        child: Text(
          title,
        ),
      ),
    );
  }
}

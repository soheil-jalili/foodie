import 'package:flutter/material.dart';
import 'package:foodie/constants/colors/app_colors.dart';
import 'package:foodie/constants/text_styles/text_styles.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.title,
    required this.width,
    required this.height,
  });
  final void Function() onPressed;
  final String title;

  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        fixedSize: Size(width, height),
      ),

      child: Text(title, style: heading5),
    );
  }
}

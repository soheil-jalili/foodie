import 'package:flutter/material.dart';
import 'package:foodie/constants/colors/app_colors.dart';

class HorizentalLine extends StatelessWidget {
  const HorizentalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 34,
      color: AppColors.whiteColor,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            width: 134,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ],
      ),
    );
  }
}

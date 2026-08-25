import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/constants/colors/app_colors.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: BoxDecoration(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
    );
  }
}

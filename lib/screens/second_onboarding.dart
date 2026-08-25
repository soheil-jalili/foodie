import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodie/constants/colors/app_colors.dart';
import 'package:foodie/constants/text_styles/text_styles.dart';
import 'package:foodie/gen/assets.gen.dart';
import 'package:foodie/screens/signin_screen.dart';
import 'package:foodie/widgets/horizental_line.dart';
import 'package:foodie/widgets/primary_button.dart';

class SecondOnboarding extends StatelessWidget {
  const SecondOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: AppColors.whiteColor,
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 9.83, bottom: 37.95),
                child: Image.asset(
                  Assets.images.secondOnboardingHeroImage.path,
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 46),
                child: Column(
                  children: [
                    Text(
                      'Foodie is Where Your Comfort Food Resides',
                      style: heading3,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 19),
                      child: Text(
                        'Enjoy a fast and smooth food delivery at\nyour doorstep',
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: body,
                      ),
                    ),
                  ],
                ),
              ),

              Spacer(),
              PrimaryButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => SigninScreen()),
                  );
                },
                title: 'Next',
                width: 158,
                height: 50,
              ),
              SizedBox(height: 16),
              HorizentalLine(),
            ],
          ),
        ),
      ),
    );
  }
}

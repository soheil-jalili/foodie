import 'package:flutter/material.dart';
import 'package:foodie/constants/colors/app_colors.dart';
import 'package:foodie/constants/text_styles/text_styles.dart';
import 'package:foodie/gen/assets.gen.dart';
import 'package:foodie/widgets/horizental_line.dart';
import 'package:foodie/widgets/primary_button.dart';

class FirstOnboarding extends StatelessWidget {
  const FirstOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 9.83, bottom: 37.95),
              child: Image.asset(Assets.images.firstOnboardingHeroImage.path),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 62),
              child: Column(
                children: [
                  Text(
                    'Track your  Comfort Food here',
                    style: heading3,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(
                      'Here You Can find a chef or dish for every \n taste and color. Enjoy!',
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
              onPressed: () {},
              title: 'Next',
              width: 158,
              height: 50,
            ),
            SizedBox(height: 16),
            HorizentalLine(),
          ],
        ),
      ),
    );
  }
}

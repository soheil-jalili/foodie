import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodie/constants/colors/app_colors.dart';
import 'package:foodie/gen/assets.gen.dart';
import 'package:foodie/screens/first_onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      if (!mounted) return;

      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (context) => FirstOnboarding()));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Center(child: SvgPicture.asset(Assets.images.logo)),

          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(Assets.images.foodSplash.path),
          ),
        ],
      ),
    );
  }
}

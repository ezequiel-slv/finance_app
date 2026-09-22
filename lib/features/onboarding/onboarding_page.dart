import 'package:finance_app/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 60.0),
          Expanded(
            flex: 2,
            child: Container(
              color: AppColors.iceWhite,
              child: Image.asset('assets/images/icon_main.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: AppColors.white,
            ),
          ),
        ],
      ),
    );
  }
}

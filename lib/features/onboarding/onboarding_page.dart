import 'dart:developer';

import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

import '../../common/widgets/primary_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.iceWhite,
      body: Align(
        child: Column(
          children: [
            const SizedBox(height: 60.0),
            Expanded(
              flex: 2,
              child: Image.asset('assets/images/money.png'),
            ),
            Text(
              'Spend Smarter',
              style: AppTextStyles.mediumText.copyWith(color: AppColors.greenLightTwo)
            ),
            Text(
              'Save More',
              style: AppTextStyles.mediumText.copyWith(color: AppColors.greenLightTwo)
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: PrimaryButton(text: 'Get Started',
                onPressed: (){
                  log('Botão clicado!');
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'Already have account? sign in',
              style: AppTextStyles.smallText.copyWith(color: AppColors.grey)
            ),
            const SizedBox(height: 40.0),
          ],
        ),
      ),
    );
  }
}

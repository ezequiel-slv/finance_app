import 'dart:developer';

import 'package:finance_app/common/constants/app_colors.dart';
import 'package:finance_app/common/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        child: Column(
          children: [
            const SizedBox(height: 60.0),
            Expanded(
              flex: 2,
              child: Container(
                color: AppColors.iceWhite,
                child: Image.asset('assets/images/money.png'),
              ),
            ),
            Text(
              'Spend Smarter',
              style: AppTextStyles.mediumText.copyWith(color: AppColors.greenLightTwo)
            ),
            Text(
              'Save More',
              style: AppTextStyles.mediumText.copyWith(color: AppColors.greenLightTwo)
            ),
            const SizedBox(height: 16.0),
            PrimaryButton(),
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

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(38.0)),
      child: Ink(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(38.0)),
          gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: AppColors.greenGradient
              ),
        ),
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(38.0)),
          onTap: () {
            log('O botão foi clicado!');
          },
          child: Container(
            alignment: Alignment.center,
            height: 56.0,
            decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(38.0)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: AppColors.greenGradient
              ),
            ),
              child: Text(
                'Get Started',
                style: AppTextStyles.mediumText18.copyWith(color: AppColors.white)
            ),
          ),
        ),
      ),
    );
  }
}

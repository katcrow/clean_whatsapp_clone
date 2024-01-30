import 'package:flutter/material.dart';
import 'package:food_prime_app/screens/onboarding/onboarding_entity.dart';
import 'package:food_prime_app/screens/onboarding/onboarding_item.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingScreen> {
  final List<OnBoardingEntity> _onBoardingData = OnBoardingEntity.onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: _onBoardingData.length,
          itemBuilder: (context, index) {
            return OnBoardingItem(
                image: _onBoardingData[index].image ?? "",
                title: _onBoardingData[index].title ?? "",
                description: _onBoardingData[index].description ?? "",
                index: index);
          }),
    );
  }
}

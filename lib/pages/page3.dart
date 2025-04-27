import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/app_images.dart';
import 'package:flutter_application_1/pages/page2.dart';
import 'package:flutter_application_1/widgets/onBoarding.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  OnBoardingPage(
        imagePath:  Assets.assetsImages3 ,
        title: 'Welcome to the App',
        subtitle: 'This is a simple onboarding page',
        onNext: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Page3()),
  );           },
        onBack: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Page2()),
  );           },
        onSkip: () {
  Navigator.pop(context);        
         },
      ),
      );
    
  }
}
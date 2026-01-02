import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/core/app_style.dart';
import 'package:islamy/screens/home.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName = '/intro';

  IntroScreen({super.key});

  List<PageViewModel> get listPagesViewModel => [
    PageViewModel(
      titleWidget: Text(
        "Welcome To Islami App",
        style: AppStyle.titleStyle,
        textAlign: TextAlign.center,
      ),
      body: "",
      image: Image.asset("assets/images/intro_1.png"),
    ),
    PageViewModel(
      titleWidget: Text("Welcome To Islami App", style: AppStyle.titleStyle),
      bodyWidget: Text(
        "We Are Very Excited To Have You In Our Community",
        style: AppStyle.bodyStyle,
        textAlign: TextAlign.center,
      ),
      image: Image.asset("assets/images/intro_2.png"),
    ),
    PageViewModel(
      titleWidget: Text("Reading The Quran", style: AppStyle.titleStyle),
      bodyWidget: Text(
        "Read, and your Lord is the Most Generous",
        style: AppStyle.bodyStyle,
        textAlign: TextAlign.center,
      ),
      image: Image.asset("assets/images/intro_3.png"),
    ),
    PageViewModel(
      titleWidget: Text("Tasbeeh", style: AppStyle.titleStyle),
      bodyWidget: Text(
        "Praise The Name Of Your Lord, The Most \n High",
        style: AppStyle.bodyStyle,
        textAlign: TextAlign.center,
      ),
      image: Image.asset("assets/images/intro_4.png"),
    ),
    PageViewModel(
      titleWidget: Text("Holy Quran Radio", style: AppStyle.titleStyle),
      bodyWidget: Text(
        "You can listen to the Holy Quran Radio through the application for free and easily",
        style: AppStyle.bodyStyle,
        textAlign: TextAlign.center,
      ),
      image: Image.asset("assets/images/intro_5.png"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: listPagesViewModel,
      globalBackgroundColor: AppColors.dark,
      showNextButton: true,
      bodyPadding: EdgeInsets.only(top: 300),
      showDoneButton: true,
      showSkipButton: true,
      skip: Text("Skip" ,style: AppStyle.bodyStyle,),
      globalHeader: Image.asset("assets/images/islamy.png"),
      next: Text("Next",style: AppStyle.bodyStyle,),
      done:  Text("Done",style: AppStyle.bodyStyle,),
      dotsDecorator: DotsDecorator(color: AppColors.grey,
      activeShape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.transparent),
      ),
      activeColor: AppColors.primary,
      activeSize: Size(20, 7),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12))),

      onDone: () {
        Navigator.pushReplacementNamed(context, Home.routeName);
      },
    );
  }
}

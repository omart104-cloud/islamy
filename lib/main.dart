import 'package:flutter/material.dart';
import 'package:islamy/intro_screen/intro_screen.dart';
import 'package:islamy/screens/home.dart';


void main() {
  runApp(const Islamy());
}

class Islamy extends StatelessWidget {
  const Islamy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Janna LT',
      ),
      initialRoute: IntroScreen.routeName,
      routes: {
        IntroScreen.routeName: (context) => IntroScreen(),
        Home.routeName: (context) => Home(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islamy/screens/home/home.dart';
import 'package:islamy/screens/intro_screen.dart';


void main(){
runApp(Islamy());
}
class Islamy extends StatelessWidget {
  const Islamy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: IntroScreen.routeName,
      routes: {
        IntroScreen.routeName: (context) => IntroScreen(),
        Home.routeName: (context) => Home(),
      },
    );
  }
}

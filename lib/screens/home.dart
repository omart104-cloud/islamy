import 'package:flutter/material.dart';
import 'package:islamy/core/app_colors.dart';
import 'package:islamy/screens/hadeth.dart';
import 'package:islamy/screens/quran.dart';
import 'package:islamy/screens/radio.dart';
import 'package:islamy/screens/sebha.dart';
import 'package:islamy/screens/time.dart';


class Home extends StatefulWidget {
  static const String routeName = '/home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        type: BottomNavigationBarType.shifting,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        backgroundColor: AppColors.primary,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("quran_ic", 0),
            label: "Quran",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("hadeth_ic", 1),
            label: "Hadeth",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("sebha_ic", 2),
            label: "Sebha",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("radio_ic", 3),
            label: "Radio",
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primary,
            icon: getImageIcon("stats_ic", 4),
            label: "Stats",
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          tabs[selectedIndex],
          Image.asset("assets/images/islamy.png"),
        ],
      ),
    );
  }

  List<Widget> tabs = [Quran(), Hadeth(), Sebha(), RadioTab(), Time()];

  Widget getImageIcon(String imageName, int index) {
    return selectedIndex == index
        ? Container(
            margin: EdgeInsets.only(top: 4),
            padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
            decoration: BoxDecoration(
              color: Color.fromRGBO(32, 32, 32, .6),
              borderRadius: BorderRadius.circular(66),
            ),
            child: ImageIcon(AssetImage("assets/images/$imageName.png")),
          )
        : ImageIcon(AssetImage("assets/images/$imageName.png"));
  }
}

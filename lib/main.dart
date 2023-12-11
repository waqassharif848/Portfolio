import 'package:flutter/material.dart';
import 'package:flutter_portfolio/Education/educationalScreen.dart';
import 'package:flutter_portfolio/Skill/skillScreen.dart';
import 'package:flutter_portfolio/projects/ProjectScreen.dart';
import 'package:flutter_portfolio/screens/Portfolio.dart';
import 'package:flutter_portfolio/screens/splashscreen.dart';
import 'degreepicsLIst/degreeList.dart';
import 'screens/Home.dart';


void main() {

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,

    initialRoute: 'splash',
    routes: {
      'splash': (context) => const SplashScreen(),
      'home': (context) => const Home(),
      'portfolio': (context) => const PortFolio(),
      'projects': (context) => const ProjectScreens(),
      'education': (context) => EducationalDetailsScreen(),
      'skill': (context) =>  SkillScreen(),
      'degreelist': (context) => const DegreeLists(),

    },
  ));
}


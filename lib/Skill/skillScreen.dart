import 'package:flutter/material.dart';


class Skill {
  final String name;
  final double percentage;
  Skill(this.name, this.percentage);
}

class SkillScreen extends StatelessWidget {
  final List<Skill> skills = [
    Skill("Flutter", 0.75),
    Skill("Dart Programming", 0.50),
    Skill("Firebase", 0.45),
    Skill("SDLC", 0.55),
    Skill("API Integration", 0.40),
    Skill("Google Mapping", 0.45),
    Skill("State Management", 0.38),
    Skill("Git Hub", 0.40),
    Skill("Analytic Skill", 0.50),
    Skill("HTML", 0.53),
    Skill("CSS", 0.30),
    Skill("SEO", 0.55),
    Skill("Unity", 0.30),
    Skill("Problem Solving", 0.65),
  ];

  @override
  Widget build(BuildContext context) {

      return Scaffold(
        appBar: AppBar(
          title: Text('SKILLS'),
          elevation: 0,
          backgroundColor: Colors.black54,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: skills
                  .map((skill) => SkillWidget(
                skill: skill,
              ))
                  .toList(),
            ),
          ),
        ),
      );

  }
}

class SkillWidget extends StatelessWidget {
  final Skill skill;

  SkillWidget({required this.skill});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.black54,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                skill.name,
                style: TextStyle(
                  fontSize: 18,
                  fontFamily: "Arvo",
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '${(skill.percentage * 100).toInt()}%',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          LinearProgressIndicator(
            value: skill.percentage,
            color: Colors.white,
            minHeight: 11,
            backgroundColor: Colors.redAccent,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),

        ],
      ),
    );
  }
}

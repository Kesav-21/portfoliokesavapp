import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SkillItem extends StatelessWidget {
  SkillItem({super.key});

  final List<MySkills> mySkills = [
    MySkills('HTML', 0.8),
    MySkills('HTML', 0.8),
    MySkills('HTML', 0.8),
    MySkills('HTML', 0.8),
    MySkills('HTML', 0.8),
    MySkills('HTML', 0.8),
    MySkills('HTML', 0.8),
    MySkills('HTML', 0.8),
    MySkills('HTML', 0.8),
    MySkills('HTML', 0.8),
    
    ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      children: [
        for(var skill in mySkills) 
        CircularPercentIndicator(
          radius: 60.0,
          center: Text(skill.sname),
          lineWidth: 5.0,
          percent: skill.progress,
        )
      ],
    );
  }
}

class MySkills {
  final String sname;
  final double progress;

  MySkills(this.sname, this.progress);
}

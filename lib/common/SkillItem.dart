import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SkillItem extends StatelessWidget {
  SkillItem({super.key});

  final List<MySkills> mySkills = [
    MySkills('HTML', 0.8,"assets/images/html.png"),
    MySkills('CSS', 0.8,"assets/images/css.png"),
    MySkills('JavaScript', 0.8,"assets/images/javascript.png"),
    MySkills('ReactJS', 0.8,"assets/images/reactjs.png"),
    MySkills('NodeJS', 0.8,"assets/images/nodejs.png"),
    MySkills('Python', 0.8,"assets/images/python.png"),
    MySkills('Java', 0.8,"assets/images/java.png"),
    MySkills('HTML', 0.8,"assets/images/K.jpg"),
    MySkills('HTML', 0.8,"assets/images/K.jpg"),
    MySkills('HTML', 0.8,"assets/images/K.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 5,
      padding: EdgeInsets.all(10),
      children: [
        for (var skill in mySkills)
        Column(
          children: [
            CircularPercentIndicator(
            radius: 35.0,
            center: Image.asset(skill.image,scale:20.0,),
            lineWidth: 5.0,
            percent: skill.progress,
          ),
          Text(skill.sname)
          ],
        )
          
      ],
    );
  }
}

class MySkills {
  final String sname;
  final double progress;
  final String image;

  MySkills(this.sname, this.progress,this.image);
}

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class SkillItem extends StatelessWidget {
  SkillItem({super.key});

  final List<MySkills> mySkills = [
    MySkills('HTML', 0.9, "assets/images/html.png"),
    MySkills('CSS', 0.8, "assets/images/css.png"),
    MySkills('JavaScript', 0.8, "assets/images/javascript.png"),
    MySkills('ReactJS', 0.75, "assets/images/reactjs.png"),
    MySkills('NodeJS', 0.8, "assets/images/nodejs.png"),
    MySkills('Python', 0.75, "assets/images/python.png"),
    MySkills('Java', 0.65, "assets/images/java.png"),
    MySkills('SQL', 0.6, "assets/images/sql.png"),
    MySkills('PHP', 0.5, "assets/images/php.png"),
    MySkills('MongoDB', 0.65, "assets/images/mongodb.png"),
    MySkills('Flutter', 0.70, "assets/images/flutter.png"),
    MySkills('Bootstrap', 0.8, "assets/images/bootstrap.png"),
    MySkills('TailwindCSS', 0.75, "assets/images/tailwind.png"),
    MySkills('Flask', 0.3, "assets/images/flask.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 10,
      padding: EdgeInsets.symmetric(horizontal:20.0),
      children: [
        for (var skill in mySkills)...[
          CircularPercentIndicator(
            radius: 35.0,
            center: Image.asset(
              skill.image,
              scale: 25.0,
            ),
            footer: Text(
              skill.sname,
              style: TextStyle(color: Colors.blue),
            ),
            lineWidth: 5.0,
            percent: skill.progress,
          ),],
      ],
    );
  }
}

class OtherSkillItem extends StatelessWidget {
  OtherSkillItem({super.key});

  final List<MyOtherSkills> myOtherSkills = [
    MyOtherSkills("Linux", "assets/images/linux.png"),
    MyOtherSkills("Git", "assets/images/git.png"),
    MyOtherSkills("Photoshop", "assets/images/photoshop.png"),
    MyOtherSkills("GraphQL", "assets/images/graphql.png"),
    MyOtherSkills("Bash", "assets/images/bash.png"),
    MyOtherSkills("C++", "assets/images/c-plus.png"),
    MyOtherSkills("Dart", "assets/images/dart.png"),
    MyOtherSkills("Numpy", "assets/images/numpy.png"),
    MyOtherSkills("Pandas", "assets/images/pandas.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
        direction: Axis.horizontal,
        alignment: WrapAlignment.spaceEvenly,
        spacing: 5.0,
        runSpacing: 5.0,
        children: [
          for (var oskill in myOtherSkills)
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Image.asset(
                    oskill.image,
                    scale: 20.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(oskill.sname),
                ),
              ],
            )
        ]);
  }
}

class MySkills {
  final String sname;
  final double progress;
  final String image;

  MySkills(this.sname, this.progress, this.image);
}

class MyOtherSkills {
  final String sname;
  final String image;

  MyOtherSkills(this.sname, this.image);
}

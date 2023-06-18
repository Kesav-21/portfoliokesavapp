import 'package:flutter/material.dart';
import 'package:portfoliokesav/common/SkillItem.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("My Skills"),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.7,
          width: 400,
          child: SkillItem()
          )
        ],
    );
  }
}

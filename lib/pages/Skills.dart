import 'package:flutter/material.dart';
import 'package:portfoliokesav/common/SkillItem.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        Text("My Skills",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.6,
          width: MediaQuery.of(context).size.width,
          child: SkillItem()
          ),
          Text("Other Skills"),
          SizedBox(
          width: MediaQuery.of(context).size.width*0.7,
          child: OtherSkillItem()
          ),
          
        ],
    ),
    );
  }
}

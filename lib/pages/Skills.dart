import 'package:flutter/material.dart';
import 'package:portfoliokesav/common/SkillItem.dart';

class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        Padding(padding: EdgeInsets.all(10.0),child: Text("My Skills",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.green)),),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.5,
          width: MediaQuery.of(context).size.width,
          child: SkillItem()
          ),
          Padding(padding: EdgeInsets.all(10.0), child: Text("Other Skills",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.green))),
          SizedBox(
          width: MediaQuery.of(context).size.width*0.9,
          child: OtherSkillItem()
          ),
        ],
    ),
    );
  }
}

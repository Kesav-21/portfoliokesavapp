import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("About Me"),
        Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          child: const Text("Kesavaraman",
              style: TextStyle(color: Colors.blue, fontSize: 25)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset("assets/images/K.jpg",scale: 5,),
              )
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          child: const Text(
              "I'm Kesavaraman a passionate self-taught Full Stack web developer . I'm a graduand in Computer Science from Panimalar Engineering College. I'm a passionate learner who's always willing to learn and work across technologies and domains bringing you programming and design from the future."),
        ),
            ],
          ),
        )
      ],
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            borderRadius: BorderRadius.circular(20.0),
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.3),
              ]
          )
          ),
          child: Column(
            children: [
              Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          child: const Text("Kesavaraman",
              style: TextStyle(color: Colors.blue, fontSize: 30)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          child: const Text("Fullstack Developer",
              style: TextStyle(color: Colors.grey, fontSize: 18)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset("assets/images/K.jpg",scale: 5,),
              )
        ),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 5.0,
          runSpacing: 5.0,
          children: [
            Chip(avatar: CircleAvatar(child: Icon(Icons.phone),backgroundColor: Colors.grey,foregroundColor: Colors.black),label: Text("+91 7401726784",style: TextStyle(fontSize: 12)),),
            Chip(avatar: CircleAvatar(child: Icon(Icons.mail),backgroundColor: Colors.grey,foregroundColor: Colors.black),label: Text("cgkesav@gmail.com",style: TextStyle(fontSize: 12)),),
          ],
        ),
        
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
          child: const Text(
              "I'm Kesavaraman a passionate self-taught Full Stack web developer . I'm a graduand in Computer Science from Panimalar Engineering College. I'm a passionate learner who's always willing to learn and work across technologies and domains bringing you programming and design from the future.",textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 16),),
        ),
            ],
          ),
        )
      ],
    ),
    )    ;
  }
}

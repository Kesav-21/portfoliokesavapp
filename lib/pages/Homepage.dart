import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kesav Portfolio"),),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5.0),
              child: const Text("Kesavaraman",style: TextStyle(color: Colors.blue,fontSize: 25)),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              child: Image.asset("assets/images/kesav.jpg"),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 30.0),
              child: const Text("I'm Kesavaraman a passionate self-taught Full Stack web developer . I'm a graduand in Computer Science from Panimalar Engineering College. I'm a passionate learner who's always willing to learn and work across technologies and domains bringing you programming and design from the future."),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        child: Row(
          children: [
            Container(
              child: Icon(Icons.home),
            )
          ],
        ),
      )
    );
  }
}

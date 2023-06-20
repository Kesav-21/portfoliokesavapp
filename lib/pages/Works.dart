import 'package:flutter/material.dart';
import 'package:portfoliokesav/common/WorkCard.dart';

final works = {};

class Works extends StatelessWidget {
  const Works({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("My Works",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue))),
        WorkCard()],
    ),
    );
  }
}

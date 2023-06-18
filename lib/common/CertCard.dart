import 'package:flutter/material.dart';

class CertCard extends StatelessWidget {
  CertCard({super.key});

  final List<MyCertifications> myCertifications=[
    MyCertifications("Responsive Web Design","assets/images/K.jpg","by FreeCodeCamp\nMay 2021",["HTML","CSS"]),
    MyCertifications("JavaScript Algorithms and Data Structures","assets/images/K.jpg","by FreeCodeCamp\nMay 2021",["HTML","CSS"]),
    MyCertifications("Front-End Development Libraries","assets/images/K.jpg","by FreeCodeCamp\nMay 2021",["HTML","CSS"]),
    MyCertifications("Python for Data Science, AI & Development","assets/images/K.jpg","by FreeCodeCamp\nMay 2021",["HTML","CSS"]),
  ];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          for(var edu in myCertifications) 
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  trailing: Image.asset('assets/images/K.jpg'),
                  title: Text(edu.tname),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(edu.desc),
                      Wrap(alignment: WrapAlignment.spaceBetween,
                      direction: Axis.horizontal,
                      children: [
                        Text("Skills learned:\t"),
                        for(var tech in edu.tech) Text('\u2022 '+tech)
                      ],)
                    ]
                    ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MyCertifications {
  final String tname;
  final String image;
  final String desc;
  final List tech;

  MyCertifications(this.tname, this.image, this.desc, this.tech);
}

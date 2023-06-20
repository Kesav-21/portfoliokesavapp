import 'package:flutter/material.dart';

class CertCard extends StatelessWidget {
  CertCard({super.key});

  final List<MyCertifications> myCertifications=[
    MyCertifications("Crash Course on Python","assets/images/google.png","by Google\nJun 2023",["Python"]),
    MyCertifications("Using Python to Interact with the operating System","assets/images/google.png","by Google\nJun 2023",["Python","Bash","Linux"]),
    MyCertifications("Web Development with Python and Flask","assets/images/jovian.png","by Jovian\nMar 2023",["Python","Flask","HTML","CSS"]),
    MyCertifications("Learning Java","assets/images/linkedin.png","by Linkedin\nDec 2022",["Java"]),
    MyCertifications("Front-End Development with React","assets/images/hkust.png","by The HongKong University\nNov 2022",["HTML","CSS","ReactJS","Bootstrap"]),
    MyCertifications("Python for Data Science, AI & Development","assets/images/ibm.png","by IBM\nFeb 2022",["Python","Numpy","Pandas"]),
    MyCertifications("Tools for Data Science","assets/images/ibm.png","by IBM\nJan 2022",["Python","WebScraping"]),
    MyCertifications("Front-End Development Libraries","assets/images/fcc.png","by FreeCodeCamp\nOct 2021",["ReactJS","Bootstrap","Redux"]),
    MyCertifications("JavaScript Algorithms and Data Structures","assets/images/fcc.png","by FreeCodeCamp\nMay 2021",["Javascript"]),
    MyCertifications("Responsive Web Design","assets/images/fcc.png","by FreeCodeCamp\nMay 2021",["HTML","CSS"]),
    MyCertifications("Python","assets/images/guvi.png","by GUVI\nNov 2022",["Python"]),
    MyCertifications("Data Analysis Zero to Pandas","assets/images/jovian.png","by Jovian\nNov 2022",["Python","Numpy","Pandas"]),
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
                  trailing: Image.asset(edu.image),
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


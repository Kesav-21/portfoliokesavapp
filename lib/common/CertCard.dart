import 'package:flutter/material.dart';

class CertCard extends StatelessWidget {
  CertCard({super.key});

  final List<MyCertifications> myCertifications = [
    MyCertifications("Crash Course on Python", "assets/images/google.png",
        "by Google\nJun 2023", ["Python"]),
    MyCertifications(
        "Using Python to Interact with the operating System",
        "assets/images/google.png",
        "by Google\nJun 2023",
        ["Python", "Bash", "Linux"]),
    MyCertifications(
        "Web Development with Python and Flask",
        "assets/images/jovian.png",
        "by Jovian\nMar 2023",
        ["Python", "Flask", "HTML", "CSS"]),
    MyCertifications("Learning Java", "assets/images/linkedin.png",
        "by Linkedin\nDec 2022", ["Java"]),
    MyCertifications(
        "Front-End Development with React",
        "assets/images/hkust.png",
        "by The HongKong University\nNov 2022",
        ["HTML", "CSS", "ReactJS", "Bootstrap"]),
    MyCertifications(
        "Python for Data Science, AI & Development",
        "assets/images/ibm.png",
        "by IBM\nFeb 2022",
        ["Python", "Numpy", "Pandas"]),
    MyCertifications("Tools for Data Science", "assets/images/ibm.png",
        "by IBM\nJan 2022", ["Python", "WebScraping"]),
    MyCertifications("Front-End Development Libraries", "assets/images/fcc.png",
        "by FreeCodeCamp\nOct 2021", ["ReactJS", "Bootstrap", "Redux"]),
    MyCertifications("JavaScript Algorithms and Data Structures",
        "assets/images/fcc.png", "by FreeCodeCamp\nMay 2021", ["Javascript"]),
    MyCertifications("Responsive Web Design", "assets/images/fcc.png",
        "by FreeCodeCamp\nMay 2021", ["HTML", "CSS"]),
    MyCertifications(
        "Python", "assets/images/guvi.png", "by GUVI\nNov 2022", ["Python"]),
    MyCertifications("Data Analysis Zero to Pandas", "assets/images/jovian.png",
        "by Jovian\nNov 2022", ["Python", "Numpy", "Pandas"]),
  ];

  final List<MyEducation> myEducation = [
    MyEducation("Panimalar Engineering College", "assets/images/school.png",
        "B.E Computer Science Engineering", "2020-2024", "9.01"),
    MyEducation("Shri Niketan Matric Higher Secondary School",
        "assets/images/school.png", "HSC", "2018-2020", "80.66%"),
    MyEducation("Smt Krishna Moolchand Maheswari Vivekananda Vidyalaya",
        "assets/images/school.png", "SSLC", "2018", "92.2%"),
  ];

  final List<MyInternships> myInternships = [
    MyInternships("Full Stack Web Developer Intern", "assets/images/triposaint.png",
        "Tripo Saints", "Mar 2023-Present"),
    MyInternships("Web Developer Intern", "assets/images/tsf.png",
        "The Sparks Foudation", "Jan 2023-Feb 2023"),
    MyInternships("Web Developer Intern", "assets/images/tsf.png",
        "The Sparks Foudation", "Mar 2022-Apr 2022"),
    MyInternships("Graphic Designer", "assets/images/oneyes.jpg",
        "OneYes Technologies", "Nov-2020"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Education",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green))),
      for (var edu in myEducation) ...[
        Card(
          elevation: 3,
          color: Colors.transparent,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            ListTile(
                trailing: Image.asset(edu.image),
                title: Text(edu.iname),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(edu.course),
                    Text(edu.duration),
                    Text(edu.grade)
                  ],
                ))
          ]),
        )
      ],
      Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Internships",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green))),
      for (var intern in myInternships) ...[
        Card(
          elevation: 3,
          color: Colors.transparent,
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            ListTile(
                trailing: Image.asset(intern.image),
                title: Text(intern.desn),
                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(intern.cname),
                    Text(intern.duration),
                  ],
                ))
          ]),
        )
      ],
      Padding(
          padding: EdgeInsets.all(10.0),
          child: Text("Certifications",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.green))),
      for (var cert in myCertifications) ...[
        Card(
          elevation: 3,
          color: Colors.transparent,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                trailing: Image.asset(cert.image),
                title: Text(cert.tname),
                subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cert.desc),
                      Wrap(
                        alignment: WrapAlignment.spaceBetween,
                        direction: Axis.horizontal,
                        children: [
                          Text("Skills learned:\t"),
                          for (var tech in cert.tech) Text('\u2022 ' + tech)
                        ],
                      )
                    ]),
              )
            ],
          ),
        )
      ],
    ]);
  }
}

class MyCertifications {
  final String tname;
  final String image;
  final String desc;
  final List tech;

  MyCertifications(this.tname, this.image, this.desc, this.tech);
}

class MyEducation {
  final String iname;
  final String image;
  final String course;
  final String duration;
  final String grade;

  MyEducation(this.iname, this.image, this.course, this.duration, this.grade);
}

class MyInternships {
  final String cname;
  final String image;
  final String desn;
  final String duration;

  MyInternships(this.desn, this.image, this.cname, this.duration);
}

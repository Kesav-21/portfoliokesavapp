import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkCard extends StatelessWidget {
  WorkCard({super.key});

  final List<MyWorks> myWorks = [
    MyWorks(
        "Basic Banking System",
        "assets/images/K.jpg",
        "Basic Banking System is the Webapp",
        ['HTML', "CSS", "PHP", "SQL", "PHPMYADMIN"],
        "https://github.com/Kesav-21/Basic-Banking-System",
        "https://spark-kesav.000webhostapp.com/"),
    MyWorks(
        "Donate Payment Gateway",
        "assets/images/K.jpg",
        "This is the charity like website which allows to contribute to charity through online using online payment modes",
        ['HTML', 'CSS', 'ReactJS', 'Javascript', 'Payment Gateway'],
        "https://github.com/Kesav-21/DonatePageWithPaymentIntegration",
        "https://dopayint.netlify.app"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      for (var work in myWorks)
        Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                  leading: Image.asset(work.image),
                  title: Text(work.tname),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(work.desc),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () => launchUrl(Uri.parse(work.github)),
                            child: Text("Github",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),),
                          ),
                          InkWell(
                            onTap: () => launchUrl(Uri.parse(work.live)),
                            child: Text("Live Site",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),),
                          ),
                        ],
                      )
                    ],
                  ),
                  onTap: () {
                    AlertDialog alert = AlertDialog(
                      title: Text(work.tname),
                      content: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Description:\n" + work.desc),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text("Tech Used:"),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [for (var tech in work.tech) Text("\u2022 " + tech),],
                            )
                              ],
                            )
                           
                            
                          ]),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"))
                      ],
                    );
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return alert;
                      },
                    );
                  })
            ],
          ),
        )
    ]);
  }
}

class MyWorks {
  final String tname;
  final String image;
  final String desc;
  final List tech;
  final String github;
  final String live;

  MyWorks(this.tname, this.image, this.desc, this.tech, this.github, this.live);
}

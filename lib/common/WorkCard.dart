import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WorkCard extends StatelessWidget {
  WorkCard({super.key});

  final List<MyWorks> myWorks = [
    MyWorks(
        "Basic Banking System",
        "assets/images/bank.jpg",
        "Basic Banking System is the Webapp",
        ['HTML', "CSS", "PHP", "SQL", "PHPMYADMIN"],
        "https://github.com/Kesav-21/Basic-Banking-System",
        "https://spark-kesav.000webhostapp.com/"),
    MyWorks(
        "Donate Payment Gateway",
        "assets/images/donate.png",
        "This is the charity like website which allows to contribute to charity through online using online payment modes",
        ['HTML', 'CSS', 'ReactJS', 'Javascript', 'Payment Gateway'],
        "https://github.com/Kesav-21/DonatePageWithPaymentIntegration",
        "https://dopayint.netlify.app"),
    MyWorks(
        "Work Tables",
        "assets/images/work.jpg",
        "Work Tables is the design of webpage it shows the details of the employees working in which table of the company and on which project he/she is invloved,using this we can filter and view the particular tables and hovering on the chair will show th information of the employee and project details",
        ['HTML','CSS','Javascript','ReactJS'],
        "https://github.com/Kesav-21/worktables",
        "http://kesav-21.github.io/worktables"),
    MyWorks(
        "Quotes Generator",
        "assets/images/quote.jpg",
        "Quotes Generator website is build using the predefined set of quotes which are displayed randomly on clicking the button",
        ['HTML','CSS','Javascript'],
        "https://github.com/Kesav-21/RandomQuote",
        "https://kesav-21.github.io/RandomQuote"),
    MyWorks(
        "Pomorodo Clock",
        "assets/images/clock.jpg",
        "Pomorodo Clock is the stopclock which has timer running on to keep track of any thing within that time period",
        ['HTML','CSS','Javascript'],
        "https://github.com/Kesav-21/Build-25-5-clock",
        "https://kesav-21.github.io/Build-25-5-clock/"),
    MyWorks(
        "Calculator",
        "assets/images/calculator.jpg",
        "A Simple JS calculator made using JS to perform basic operations like Addition,Subtraction,Division,Multiplication",
        ['HTML','CSS','Javascript'],
        "https://github.com/Kesav-21/SimpleJSCalculator",
        "https://kesav-21.github.io/SimpleJSCalculator/"),
    MyWorks(
        "Survey Form",
        "assets/images/survey.jpg",
        "It is simple form built by using different form fields available in the HTML",
        ['HTML','CSS','Javascript'],
        "https://github.com/Kesav-21/SurveyForm",
        "https://kesav-21.github.io/SurveyForm"),
    MyWorks(
        "MarkDown Previewer",
        "assets/images/markdown.png",
        "Markdown is a lightweight markup language with plain text formatting syntax. It is a simple way to add formatting like headers, bold, bulleted lists, and so on to a plain text. Markdown uses a simple formatting syntax to accomplish the same thing that HTML does, but it is simpler than HTML.",
        ['HTML','CSS','Javascript'],
        "https://github.com/Kesav-21/MarkDownPreviewer",
        "https://kesav-21.github.io/MarkDownPreviewer/"),
    MyWorks(
        "Sound Machine",
        "assets/images/sound.png",
        "Sound Machine is simple js website which behaves differently on different key presses in the keyboard or either mouse click it plays different sound on different key press",
        ['HTML','CSS','Javascript'],
        "https://github.com/Kesav-21/SoundMachine",
        "https://kesav-21.github.io/SoundMachine/"),
    MyWorks(
        "Product Landing page",
        "assets/images/product.jpg",
        "A product landing page is a post-click page created specifically to convince a visitor to convert on a product-related offer. Design-wise, it's similar a traditional landing page.",
        ['HTML','CSS','Javascript'],
        "https://github.com/Kesav-21/ProductLandingPage",
        "https://kesav-21.github.io/ProductLandingPage/"),
    MyWorks(
        "Phone Directory",
        "assets/images/phonebook.png",
        "a Database that lists the names, addresses, and phone numbers of the people and businesses in a certain area.Using this webapp you can add and manage the phone numbers of the person",
        ['HTML','CSS','Javascript','ReactJS'],
        "https://github.com/Kesav-21/Phone-Directory",
        "https://phonedirectoryk7.netlify.app/"),
    MyWorks(
        "Task Adder",
        "assets/images/task.jpg",
        "A task tracker is an intelligent version of a to-do list that can help manage tasks and assignments. Team members can use task trackers individually or together as a team. These allow team members to list their essential projects, prioritize them, and mark them as done when the tasks are complete.",
        ['HTML','CSS','Javascript','ReactJS'],
        "https://github.com/Kesav-21/Task-Tracker",
        "https://tasktrackerkesav.netlify.app/"),
    MyWorks(
        "Housing Clone using Firebase",
        "assets/images/housing.png",
        "It is the website inspired form the realtor website which has been cloned using the reactjs and some npm packages and instead of server side programming firebase is used to provide the adding the listing,delete the listing,view the listing and user authentication,etc.This app helps to find the house or homes that are available for sell or rent.",
        ['HTML','CSS','JS','ReactJS','Firebase','Tailwind'],
        "https://github.com/Kesav-21/HousingFinder",
        "https://housingfinderclok7.netlify.app"),
    MyWorks(
        "ToDoList Using Flask",
        "assets/images/todolist.png",
        "It is the website used to keep track of the to do tasks and store them in the database and can access from anywhere",
        ['HTML','CSS','Flask','SQLAlchemy'],
        "https://github.com/Kesav-21/todolist",
        "https://todolist-jyvz.onrender.com/"),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: <Widget>[
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
                            onTap: () => launchUrl(Uri.parse(work.github),mode: LaunchMode.externalApplication),
                            child: Text("Github",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),),
                          ),
                          InkWell(
                            onTap: () => launchUrl(Uri.parse(work.live),mode: LaunchMode.externalApplication),
                            child: Text("Live Site",style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),),
                          ),
                        ],
                      )
                    ],
                  ),
                  onTap: () {
                    AlertDialog alert = AlertDialog(
                      title: Text(work.tname),
                      content: SingleChildScrollView(
                        child: Column(
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
                      ) ,
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
    ]),
    );
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

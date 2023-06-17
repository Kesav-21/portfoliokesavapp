import 'package:flutter/material.dart';
import 'package:portfoliokesav/pages/Contact.dart';
import 'package:portfoliokesav/pages/Education.dart';
import 'package:portfoliokesav/pages/Homepage.dart';
import 'package:portfoliokesav/pages/Skills.dart';
import 'package:portfoliokesav/pages/Works.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Works(),
    Education(),
    Skills(),
    Contact()
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
          title: const Text("Kesav Portfolio"),
        ),
      body:Center(
        child:_widgetOptions.elementAt(_selectedIndex),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.red.shade300,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.laptop_chromebook),
          label:"Works",
          backgroundColor: Colors.blue.shade300,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.school),
          label:"Education",
          backgroundColor: Colors.green.shade300,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.stars_sharp),
          label:"Skills",
          backgroundColor: Colors.cyan.shade300,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.contact_page),
          label:"Contact",
          backgroundColor: Colors.teal.shade300,
        ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: onItemTapped,
        ),
    ),
    );
  }
}

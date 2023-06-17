import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 50,
          child: Row(
            children: [
              Container(
                child: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () => {},
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.laptop_chromebook),
                  onPressed: () => {},
                ),

              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.school),
                  onPressed: () => {},
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.stars_sharp),
                  onPressed: () => {},
                ),
              ),
              Container(
                child: IconButton(
                  icon: Icon(Icons.contact_page),
                  tooltip: "Contact",
                  onPressed: () => {},
                ),
              ),
            ],
          ),
        );
  }
}

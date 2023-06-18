import 'package:flutter/material.dart';
import 'package:portfoliokesav/common/ContactItem.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("My Profiles and Contact"),
        SizedBox(
          height: MediaQuery.of(context).size.height*0.7,
          width: MediaQuery.of(context).size.width,
          child: ContactItem()
          )
        ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:portfoliokesav/common/WorkCard.dart';

final works = {};

class Works extends StatelessWidget {
  const Works({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      children: [const Text("My Works"), WorkCard()],
    ),
    );
  }
}

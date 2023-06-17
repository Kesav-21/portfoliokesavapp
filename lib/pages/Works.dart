import 'package:flutter/material.dart';
import 'package:portfoliokesav/common/WorkCard.dart';

final works = {};

class Works extends StatelessWidget {
  const Works({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: WorkCard(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/colorsTheme.dart';
import 'components/projectsPublic_left.dart';
import 'components/projectsPublic_right.dart';

const appcolors = AppColors();

class Projectspublic extends StatelessWidget {
  const Projectspublic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Row(
          children: [ProjectspublicLeft(), ProjectspublicRight()],
        ),

    );
  }
}

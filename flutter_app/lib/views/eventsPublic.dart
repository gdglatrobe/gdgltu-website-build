import 'package:flutter/material.dart';
import 'package:flutter_app/colorsTheme.dart';
import 'package:flutter_app/views/components/eventPublic_left.dart';
import 'package:flutter_app/views/components/eventPublic_right.dart';

const appcolors = AppColors();

class EventsPublic extends StatelessWidget {
  const EventsPublic({super.key});

  @override
  Widget build(BuildContext context){

    double paddingPerc = MediaQuery.of(context).size.height / 10;

    return ListView(
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [SizedBox(height: paddingPerc,),Row(
          children: [EventspublicLeft(), EventspublicRight()],
        ), SizedBox(height: paddingPerc,),Container(
          padding: const EdgeInsets.only(left: 20),
          child: const Column(
            children: [
              Text('Events', style: TextStyle(fontSize: 70, color: Colors.black),), // Access the 'white' property from the 'AppColors' class
              Text('Upcoming events', style: TextStyle(fontSize: 80, color: Colors.black),), // Access the 'white' property from the 'AppColors' class
            ],
          ),
        )],
    );
  }
}
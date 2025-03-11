import 'package:flutter/material.dart';
import 'package:flutter_app/colorsTheme.dart';
import 'package:flutter/widgets.dart';

const appcolors = AppColors();

class EventspublicRight extends StatelessWidget {
  const EventspublicRight({super.key});

  @override
  Widget build(BuildContext context){

    var paddingRightCon = MediaQuery.of(context).size.width /15;


    return Container(
      padding: EdgeInsets.only(left: paddingRightCon),
      alignment: Alignment.center,
      child: const Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: <Widget>[
            Positioned(child: Image(image: AssetImage('lib/assets/images/eventsPage/events_hero_img_cut.png'), width: 430,height: 580,)),      
        ],
      ),
    );
  }
}
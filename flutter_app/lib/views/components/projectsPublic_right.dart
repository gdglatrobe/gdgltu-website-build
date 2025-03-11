import 'package:flutter/material.dart';
import 'package:flutter_app/colorsTheme.dart';
import 'package:flutter/widgets.dart';

const appcolors = AppColors();

class ProjectspublicRight extends StatelessWidget {
  const ProjectspublicRight({super.key});

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
          Positioned(bottom:-55, left: 300, child: Image(image: AssetImage('lib/assets/images/projectsPage/ellipse_1.png'), width: 200, height: 200,)),
            Positioned(child: Image(image: AssetImage('lib/assets/images/projectsPage/hero_img_proj.png'), width: 430,height: 580,)),
            Positioned(top:-55, right: 300,child: Image(image: AssetImage('lib/assets/images/projectsPage/rectangle_1.png'), width: 200,height: 200))
        ],
      ),
    );
  }
}
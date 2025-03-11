import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopHeroImg extends StatelessWidget{
  const TopHeroImg({super.key});

  @override
  Widget build(BuildContext context) {

    var paddingRightCon = MediaQuery.of(context).size.width /15;
    
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(left: paddingRightCon),
      child: const Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center, // Align elements to center of stack
          children: <Widget>[
            Positioned(top:-55, right: -70,child: Image(image: AssetImage('lib/assets/images/polygon_1.png'), width: 200,height: 200)),
            Positioned(child: Image(image: AssetImage('lib/assets/images/hero_img.png'), width: 430,height: 580,)),
            Positioned(bottom:-55, left: -55, child: Image(image: AssetImage('lib/assets/images/star_1.png'), width: 200, height: 200,))// Replace with your image path
          ],
      ),
    );
}
}
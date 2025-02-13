import 'package:flutter/material.dart';
import 'package:flutter_app/colorsTheme.dart';
import 'package:flutter_app/views/components/eventPublic_left.dart';
import 'package:flutter_app/views/components/eventPublic_right.dart';

const appcolors = AppColors();

class EventsPublic extends StatelessWidget {
  @override
  Widget build(BuildContext context){

    double paddingPerc = MediaQuery.of(context).size.height / 10;

    return ListView(
      physics: BouncingScrollPhysics(),
        children: [SizedBox(height: paddingPerc,),Row(
          children: [EventspublicLeft(), EventspublicRight()],
        ), SizedBox(height: paddingPerc,),Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            children: [
              Text('Past Events', style: TextStyle(fontFamily: 'Google Sans',fontSize: 60, color: Color(0xff222222), fontWeight: FontWeight.w600),),
              SizedBox(height: paddingPerc),
              Row(
                children: [
                  Container(
                    height: 510,
                    width: 450,
                    child: Card.outlined(
                      margin: EdgeInsets.all(10),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),side: BorderSide(color: Color.fromARGB(255, 131, 131, 131), width: 1)
                      ),
                      child: Column(
                        children: [
                        SizedBox(width: 450, height: 350, child: Image(image: AssetImage('lib/assets/images/eventsPage/events_hero_img.jpg'), fit: BoxFit.cover,)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Event Name', softWrap: true,textAlign: TextAlign.start ,style: TextStyle(fontFamily: 'Google Sans',fontSize: 30, color: Color(0xff222222), fontWeight: FontWeight.w600),),
                            ),
                          ],
                        ),
                      ],),
                    ),
                  ),
                ],
              ) // Access the 'white' property from the 'AppColors' class
            ],
          ),
        )],
    );
  }
}
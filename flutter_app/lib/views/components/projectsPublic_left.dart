import 'package:flutter/material.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter_app/colorsTheme.dart';
import 'package:google_fonts/google_fonts.dart';

const appcolors = AppColors();

class ProjectspublicLeft extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    double paddingPerc = MediaQuery.of(context).size.width / 12;
    
    return Container(
      padding: EdgeInsets.only(left: paddingPerc),
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Projects',
            style: TextStyle(
              fontFamily: 'Google Sans',
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A1A1A),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
              width: 650,
              child: Text(
                'GDSC La Trobe is a project focused community where we believe in learning by doing. Our projects aim at improving the experience of the local community through technology.',
                style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                  fontSize: 20,
                  color: Color(0xFF1A1A1A),
                  fontWeight: FontWeight.w400,
                  height: 2,
                )),
              )),
          const SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
              constraints: const BoxConstraints(maxHeight: 70, maxWidth: 200),
              child: AnimatedButton(
                textAlignment: Alignment.center,
                text: 'View Projects',
                textStyle: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(
                    color: Color(0xFF1A1A1A),
                    fontSize: 18,
                  ),
                ),
                onPress: () {},
                selectedTextColor: Color(0xFFFAFAFA),
                animatedOn: AnimatedOn.onHover,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                borderRadius: 50,
                backgroundColor: const Color(0xFFFAFAFA),
                selectedBackgroundColor: const Color(0xFF222222),
                borderColor: Color(0xFF222222),
                borderWidth: 2,
              ))
        ],
      ),
    );
  }
}

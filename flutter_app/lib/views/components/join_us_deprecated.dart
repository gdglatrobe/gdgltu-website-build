import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/colorsTheme.dart';
import 'package:google_fonts/google_fonts.dart';

const appcolors = AppColors();

class JoinUs extends StatefulWidget {
  const JoinUs({super.key});

  @override
  _JoinUsState createState() => _JoinUsState();
}

class _JoinUsState extends State<JoinUs> with SingleTickerProviderStateMixin {

  late AnimationController _animationController2;
  late Animation _animation2;
  late Animation _curve2;

  @override
  void initState() {
    _animationController2 = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 400));
    _curve2 = CurvedAnimation(
        parent: _animationController2, curve: Curves.easeInOutSine);
    _animation2 = Tween<double>(begin: 0.0, end: 150.0)
        .animate(_curve2 as Animation<double>)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      clipBehavior: Clip.hardEdge,
      constraints: const BoxConstraints(
        maxWidth: 150,
        maxHeight: 50,
      ),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: <Widget>[
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
            ),
            child: Container(
              clipBehavior: Clip.hardEdge,
              width: _animation2.value,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF222222),
                    Color(0xFF222222),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
            ),
          ),
          MouseRegion(
            onHover: (PointerHoverEvent event) {
              _animationController2.forward();
            },
            onExit: (PointerExitEvent event) {
              _animationController2.reverse();
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: const Color(0xFF1A1A1A),
                    width: 3,
                    style: BorderStyle.solid,
                    strokeAlign: BorderSide.strokeAlignInside),
              ),
              width: 250,
              height: 50,
              child: Center(
                child: Text(
                  'Join Us',
                  style: GoogleFonts.robotoMono(
                    textStyle: const TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
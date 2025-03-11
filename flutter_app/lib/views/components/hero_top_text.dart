import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/colorsTheme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';

const appcolors = AppColors();

class TopHero extends StatefulWidget {
  const TopHero({super.key});

  @override
  TopHeroTxt createState() => TopHeroTxt();
}

class TopHeroTxt extends State<TopHero> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  late Animation _curve;

  var httpsUrL = Uri(
      scheme: 'https',
      host: 'gdg.community.dev',
      path: 'gdg-on-campus-la-trobe-university-melbourne-australia/');

  void _launchUrl() async => await canLaunchUrl(httpsUrL)
      ? await launchUrl(httpsUrL)
      : throw 'Could not launch';

  final _instUrl = Uri(
    scheme: 'https',
    host: 'instagram.com',
    path: 'gdglatrobe',
  );

  void _launchUrlInsta() async => await canLaunchUrl(_instUrl)
      ? await launchUrl(_instUrl)
      : throw 'Could not launch';

  final _linkInUrl = Uri(
    scheme: 'https',
    host: 'linkedin.com',
    path: 'company/gdglatrobe',
  );

  void _launchUrlLinkIn() async => await canLaunchUrl(_linkInUrl)
      ? await launchUrl(_linkInUrl)
      : throw 'Could not launch';

  final _discordUrl = Uri(
    scheme: 'https',
    host: 'discord.gg',
    path: '4HX7Ubk983',
  );

  void _launchUrlDiscIn() async => await canLaunchUrl(_discordUrl)
      ? await launchUrl(_discordUrl)
      : throw 'Could not launch';

  final _emailLinkUrl = Uri(
    scheme: 'mailto',
    path: 'gdsclatrobe@gmail.com',
  );

  void _launchUrlEmail() async => await canLaunchUrl(_emailLinkUrl)
      ? await launchUrl(_emailLinkUrl)
      : throw 'Could not launch';

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 350));
    _curve = CurvedAnimation(
        parent: _animationController, curve: Curves.easeInOutSine);
    _animation = Tween<double>(begin: 0.0, end: 225.0)
        .animate(_curve as Animation<double>)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double paddingPerc;
    paddingPerc = MediaQuery.of(context).size.width / 12;
    return Container(
      padding: EdgeInsets.only(left: paddingPerc),
      width: MediaQuery.of(context).size.width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
              image: AssetImage('lib/assets/images/logo_full.png'), width: 300),
          const SizedBox(height: 10),
          Wrap(
            spacing: 7,
            runSpacing: 7,
            children: [
              const Text(
                'Where',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Google Sans',
                ),
                textAlign: TextAlign.start,
              ),
              
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return appcolors.redBlueGradient.createShader(bounds);
                },
                child: const Text(
                  'Tech',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Google Sans',
                  ),
                ),
              ),
              
              const Text('and',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Google Sans',
                  )),
             
              ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) {
                  return appcolors.yellowRedGradient.createShader(bounds);
                },
                child: const Text(
                  'Community',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Google Sans',
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                  color: const Color(0xFF1A1A1A),
                  width: 3,
                  strokeAlign: BorderSide.strokeAlignInside),
            ),
            clipBehavior: Clip.hardEdge,
            child: Stack(
              clipBehavior: Clip.hardEdge,
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Container(
                    clipBehavior: Clip.hardEdge,
                    width: _animation.value,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: LinearGradient(
                        colors: [
                          appcolors.blue500,
                          appcolors.purpleGradient,
                          appcolors.red500,
                          appcolors.orangeGradient,
                          appcolors.yellowGradient,
                          appcolors.green500
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                    )),
                MouseRegion(
                  onHover: (PointerHoverEvent event) {
                    _animationController.forward();
                  },
                  onExit: (PointerExitEvent event) {
                    _animationController.reverse();
                  },
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    width: 225,
                    height: 70,
                    child: const Center(
                      child: Text(
                        'Connect',
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 42,
                          fontFamily: 'Google Sans',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
              constraints: const BoxConstraints(maxHeight: 50, maxWidth: 150),
              child: AnimatedButton(
                text: 'Join Us',
                textStyle: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(
                    color: Color(0xFF222222),
                    fontSize: 20,
                  ),
                ),
                selectedTextColor: const Color(0xFFFAFAFA),
                onPress: _launchUrl,
                animatedOn: AnimatedOn.onHover,
                transitionType: TransitionType.LEFT_TO_RIGHT,
                borderRadius: 50,
                backgroundColor: const Color(0xFFFAFAFA),
                selectedBackgroundColor: const Color(0xFF222222),
                borderColor: const Color(0xFF222222),
                borderWidth: 2,
              )),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: _launchUrlInsta,
                  hoverColor: const Color(0xFFE8DEF8),
                  iconSize: 24,
                  icon: const Icon(
                      size: 24, MdiIcons.instagram, color: Color(0xFF1A1A1A))),
              const SizedBox(width: 10),
              IconButton(
                  iconSize: 24,
                  onPressed: _launchUrlLinkIn,
                  hoverColor: const Color(0xFFE8DEF8),
                  icon: const Icon(
                      size: 24, MdiIcons.linkedin, color: Color(0xFF1A1A1A))),
              const SizedBox(width: 10),
              IconButton(
                  onPressed: _launchUrlDiscIn,
                  hoverColor: const Color(0xFFE8DEF8),
                  icon: const FaIcon(
                    size: 24,
                    FontAwesomeIcons.discord,
                    color: Color(0xFF1A1A1A),
                  )),
                  const SizedBox(width: 10,),
              IconButton(onPressed: _launchUrlEmail, hoverColor: const Color(0xFFE8DEF8), icon: const Icon(Icons.mail_outline, color:Color(0xFF1A1A1A), size: 24,))
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_material_design_icons/flutter_material_design_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('lib/assets/images/robot-mascot-temp.png'),
            width: 300,
            height: 300,
          ),
          const SizedBox(
            height: 50,
          ),
          const Wrap(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'We are working on something cool!\nMeanwhile feel free to connect with us on our socials below!',
                  style: TextStyle(
                      fontFamily: 'Google Sans',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Wrap(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: _launchUrlInsta,
                    hoverColor: const Color(0xFFE8DEF8),
                    iconSize: 24,
                    icon: const Icon(
                        size: 24,
                        MdiIcons.instagram,
                        color: Color(0xFF1A1A1A))),
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
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                    onPressed: _launchUrlEmail,
                    hoverColor: const Color(0xFFE8DEF8),
                    icon: const Icon(
                      Icons.mail_outline,
                      color: Color(0xFF1A1A1A),
                      size: 24,
                    ))
              ],
            )
          ])
        ],
      )),
    );
  }
}

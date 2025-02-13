import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/views/components/hero_top_image.dart';
import 'package:flutter_app/views/components/hero_top_text.dart';
import 'package:flutter_app/views/projectsPublic.dart';
import 'package:flutter_app/views/eventsPublic.dart';
import 'package:flutter_app/views/aboutUs.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> _screens = [
    Container(
      child: Row(
        children: [TopHero(), TopHeroImg()],
      ),
    ),
    Container(child: Projectspublic()),
    Container(child: EventsPublic()),
    Container(child: AboutUs())
  ];
  // No need for isNavRailOpen anymore
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        // Use Row to place the rail and content side-by-side
        children: [
          NavigationRail(
            backgroundColor: const Color(0xF9FFFFFF),
            // No leading icon in this version
            extended: false,
            leading: const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Icon(Icons.more_horiz)),
            labelType: NavigationRailLabelType.all,
            groupAlignment: 0,
            // Hide labels (icons only)
            destinations: [
              NavigationRailDestination(
                padding: EdgeInsets.only(left: 10, right: 10),
                icon: const Icon(Icons.home_outlined),
                selectedIcon: const Icon(Icons.home),
                label: Text('Home',
                    style: TextStyle(fontFamily: 'Google Sans', fontWeight: FontWeight.w500, color: Color.fromARGB(255, 43, 43, 43))),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                icon: const Icon(Icons.description_outlined),
                selectedIcon: const Icon(Icons.description),
                label: Text('Projects',
                    style: TextStyle(fontFamily: 'Google Sans', fontWeight: FontWeight.w500, color: Color(0xFF2B2B2B))),
              ),
              NavigationRailDestination(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                icon: const Icon(Icons.event_outlined),
                selectedIcon: const Icon(Icons.event),
                label: Text('Events',
                    style: TextStyle(fontFamily: 'Google Sans', fontWeight: FontWeight.w500, color: Color(0xFF2B2B2B))),
              ),

              NavigationRailDestination(
                padding: EdgeInsets.only(left: 10, right: 10, top: 10),
                icon: const Icon(Icons.groups_outlined),
                selectedIcon: const Icon(Icons.groups),
                label: Text('About Us',
                    style: TextStyle(fontFamily: 'Google Sans', fontWeight: FontWeight.w500, color: Color(0xFF2B2B2B))),
              ),
              // Add more destinations as needed
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (index) {
              // Handle navigation when items are clicked
              setState(() {
                _selectedIndex = index;
              });
            },
          ), // Add a divider
          Expanded(
            child: Container(
              child: _screens[_selectedIndex],
            ),
          ),
        ],
      ),
    );
  }
}

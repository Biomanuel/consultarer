import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
List<BottomNavigationBarItem> bottomNavBarItem = [
  BottomNavigationBarItem(
    label: 'Home',
    icon: Icon(FontAwesomeIcons.suitcase, color: Colors.black,),
    tooltip: 'Home',
  ),
  BottomNavigationBarItem(
    label: 'Link',
    icon: Icon(FontAwesomeIcons.link, color: Colors.black,),
    tooltip: 'Link',
  ),
  BottomNavigationBarItem(
    label: 'History',
    icon: Icon(FontAwesomeIcons.history, color: Colors.black,),
    tooltip: 'History',
  ),
  BottomNavigationBarItem(
    label: 'Notification',
    icon: Icon(Icons.notifications_active, color: Colors.black,),
    tooltip: 'Notification',
  ),
  BottomNavigationBarItem(
    label: 'Chat',
    icon: Icon(Icons.chat, color: Colors.black,),
    tooltip: 'Chat',
  ),
];
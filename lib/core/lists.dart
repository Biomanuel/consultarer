import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
List<BottomNavigationBarItem> bottomNavBarItem = [
  BottomNavigationBarItem(
    label: 'Home',
    icon: Icon(FontAwesomeIcons.suitcase,),
    tooltip: 'Home',
  ),
  BottomNavigationBarItem(
    label: 'Hub',
    icon: Icon(FontAwesomeIcons.hubspot,),
    tooltip: 'Hub',
  ),
  BottomNavigationBarItem(
    label: 'Sessions',
    icon: Icon(FontAwesomeIcons.history,),
    tooltip: 'Sessions',
  ),
  BottomNavigationBarItem(
    label: 'Notification',
    icon: Icon(Icons.notifications_active,),
    tooltip: 'Notification',
  ),
  BottomNavigationBarItem(
    label: 'Chat',
    icon: Icon(Icons.chat,),
    tooltip: 'Chat',
  ),
];
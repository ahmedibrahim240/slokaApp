import 'package:flutter/material.dart';

class NavBarItemsMoldes {
  final String title;
  final IconData icon;

  NavBarItemsMoldes({required this.title, required this.icon});
}

List<NavBarItemsMoldes> navBarItemList = [
  NavBarItemsMoldes(
    icon: Icons.home,
    title: 'الرئيسية',
  ),
  NavBarItemsMoldes(
    icon: Icons.person,
    title: 'من نخن',
  ),
  NavBarItemsMoldes(
    icon: Icons.privacy_tip_outlined,
    title: 'الخصوصية',
  ),
  NavBarItemsMoldes(
    icon: Icons.call,
    title: 'اتصل بنا',
  ),
];

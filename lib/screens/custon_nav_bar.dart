import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sloka_webapp/core/controllers/nav_bar_controller.dart';
import 'package:sloka_webapp/screens/about_us.dart';
import 'package:sloka_webapp/screens/call_us.dart';
import 'package:sloka_webapp/screens/home.dart';
import 'package:sloka_webapp/screens/privacy.dart';

import '../modles/nav_bar_items_models.dart';

class CustonNavBar extends StatelessWidget {
  const CustonNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> body = const [
      Home(),
      AboutUs(),
      Privacy(),
      CallUs(),
    ];
    if (Get.arguments != null) {
      NavBarController.instance.currentIndex.value = Get.arguments;
    }

    return Obx(
      () => Scaffold(
        body: body[NavBarController.instance.currentIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0.0,
          currentIndex: NavBarController.instance.currentIndex.value,
          backgroundColor: Colors.white,
          showUnselectedLabels: true,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.black,
          onTap: (index) {
            NavBarController.instance.currentIndex.value = index;
          },
          items: navBarItemList
              .map(
                (item) => BottomNavigationBarItem(
                  icon: Icon(
                    item.icon,
                    color: Colors.black,
                  ),
                  activeIcon: Icon(
                    item.icon,
                    color: Colors.blue,
                  ),
                  label: item.title,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

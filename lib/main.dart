import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sloka_webapp/screens/splash.dart';
import 'core/controllers/nav_bar_controller.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(NavBarController());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sloka',
      home: SplachScreen(),
    );
  }
}

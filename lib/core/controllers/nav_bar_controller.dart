import 'package:get/get.dart';
import 'package:sloka_webapp/screens/custon_nav_bar.dart';

class NavBarController extends GetxController {
  static NavBarController instance = Get.find();
  var currentIndex = 0.obs;
  setCurretIndex(var index) {
    currentIndex = index;
    update();
  }

  @override
  void onReady() {
    super.onReady();
    currentIndex.value = 0;
    Future.delayed(
      const Duration(seconds: 5),
      () {
        Get.offAll(() => const CustonNavBar(), arguments: 0);
      },
    );
  }
}

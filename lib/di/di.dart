import 'package:get/get.dart';
import 'package:quizapp/presentation/screens/mark_screen/mark_screen_controller.dart';

import '../presentation/screens/home_screen/home_screen_controller.dart';

class DependencyInjection {
  static init() {
    Get.lazyPut(() => HomeScreenController());
    Get.lazyPut(() => MarkScreenController());
  }
}

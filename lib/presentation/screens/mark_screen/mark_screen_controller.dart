import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quizapp/presentation/screens/home_screen/home_screen_controller.dart';

class MarkScreenController extends ChangeNotifier {
  MarkScreenController();
  late double average;

  calculateAverage() {
    HomeScreenController homeController = Get.find();
    average = (homeController.score / homeController.data.length);
  }
}

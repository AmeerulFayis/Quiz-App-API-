import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../home_screen_controller.dart';

class QuestionIndicator extends StatelessWidget {
  const QuestionIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    homeController.fetchData();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircularPercentIndicator(
        radius: 20,
        percent: homeController.currentIndex / homeController.data.length,
      ),
    );
  }
}

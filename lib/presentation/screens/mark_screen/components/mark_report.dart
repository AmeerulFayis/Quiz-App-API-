import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quizapp/presentation/screens/home_screen/home_screen_controller.dart';

import '../../../theme/theme.dart';
import '../mark_screen_controller.dart';

class MarkReport extends StatelessWidget {
  const MarkReport({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    MarkScreenController markController = Get.find();
    markController.calculateAverage();
    return CircularPercentIndicator(
        radius: 170.0,
        lineWidth: 20,
        percent: markController.average,
        progressColor: redColor,
        backgroundColor: greyColor,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Score",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            Text(
              "${homeController.score}/${homeController.data.length}",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ],
        ));
  }
}

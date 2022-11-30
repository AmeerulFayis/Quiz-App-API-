// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../home_screen_controller.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();

    return Column(
      children: [
        if (homeController.data.length > 0)
          Text(
            homeController.data[homeController.currentIndex]['question'],
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          )
      ],
    );
  }
}

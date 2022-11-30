// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quizapp/presentation/screens/home_screen/home_screen_controller.dart';

import '../../../theme/theme.dart';

class AnswersWidget extends StatelessWidget {
  const AnswersWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    homeController.fetchData();
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: greyColor, borderRadius: BorderRadius.circular(20.0)),
              child: InkWell(
                splashColor: greyColor,
                onTap: () {
                  homeController.checkAnswer(0);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      if (homeController.data.length > 0)
                        Text(
                          homeController.data[homeController.currentIndex]
                              ['answers'][0],
                          style: TextStyle(fontSize: 16),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: 160,
              decoration: BoxDecoration(
                  color: greyColor, borderRadius: BorderRadius.circular(20.0)),
              child: InkWell(
                splashColor: greyColor,
                onTap: () {
                  homeController.checkAnswer(1);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      if (homeController.data.length > 0)
                        Text(
                          homeController.data[homeController.currentIndex]
                              ['answers'][1],
                          style: TextStyle(fontSize: 16),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: greyColor, borderRadius: BorderRadius.circular(20.0)),
              child: InkWell(
                splashColor: greyColor,
                onTap: () {
                  homeController.checkAnswer(2);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      if (homeController.data.length > 0)
                        Text(
                          homeController.data[homeController.currentIndex]
                              ['answers'][2],
                          style: TextStyle(fontSize: 16),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  color: greyColor, borderRadius: BorderRadius.circular(20.0)),
              child: InkWell(
                splashColor: greyColor,
                onTap: () {
                  homeController.checkAnswer(3);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      if (homeController.data.length > 0)
                        Text(
                          homeController.data[homeController.currentIndex]
                              ['answers'][3],
                          style: TextStyle(fontSize: 16),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

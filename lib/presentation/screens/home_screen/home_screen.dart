// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quizapp/presentation/screens/mark_screen/mark_screen.dart';

import '../../theme/theme.dart';
import 'components/answers_widget.dart';
import 'components/question_indicator.dart';
import 'components/questions_widget.dart';
import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeScreenController homeController = Get.find();
    homeController.fetchData();
    return AnimatedBuilder(
      animation: homeController,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              child: Column(
                children: [
                  QuestionIndicator(),
                  QuestionWidget(),
                  SizedBox(
                    height: 250,
                  ),
                  AnswersWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

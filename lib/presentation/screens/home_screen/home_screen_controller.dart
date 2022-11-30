import 'dart:convert' as convert;
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';
import 'package:quizapp/presentation/screens/mark_screen/mark_screen.dart';

class HomeScreenController extends ChangeNotifier {
  HomeScreenController();

  var currentIndex = 0;
  List<dynamic> data = [];
  int score = 0;

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(
        "https://run.mocky.io/v3/5121498d-aadd-471d-afc6-701ea6392fda"));
    final jsonResponse = convert.jsonDecode(response.body);
    data = jsonResponse;
    // print(data[currentIndex]['correctAnswer']);

    notifyListeners();
  }

  void checkAnswer(int buttonPosition) {
    String correcanswer = data[currentIndex]['correctAnswer'].toString();
    String buttonlocation = buttonPosition.toString();
    if (correcanswer == buttonlocation) {
      score++;
      print("correct answer");
    } else {
      print("wrong answer");
    }

    if (data.length - 1 > currentIndex) {
      currentIndex++;
    } else {
      Get.to(MarkScreen());
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizapp/presentation/routes/routes.dart';
import 'package:quizapp/presentation/routes/routes_constants.dart';
import 'package:quizapp/presentation/theme/theme.dart';
import 'package:quizapp/utils/setup_app.dart';

void main() async {
  await setupApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      initialRoute: RouteList.initial,
      routes: Routes.routes,
      theme: themeData(context),
    );
  }
}
